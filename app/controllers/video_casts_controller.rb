# encoding: utf-8
class VideoCastsController < InheritedResources::Base
  load_and_authorize_resource
  helper_method :sort_column, :sort_direction

  def index
    @menu = 'admin'
    session[:go_to_after_edit] = video_casts_path
    @video_casts = VideoCast.order('episode_nr desc').page(params[:page]).per(25)
  end
  
  def show

    if browser.firefox?
      @video = VideoCast.find(params[:id]).ogv
    elsif browser.safari?
      @video = VideoCast.find(params[:id]).m4v
    elsif browser.chrome?
      @video = VideoCast.find(params[:id]).mp4
    elsif browser.opera?
      @video = VideoCast.find(params[:id]).m4v
    else
      @video = VideoCast.find(params[:id]).mp4
    end
    
    @video_cast = VideoCast.find(params[:id])
    session[:go_to_after_edit] = video_cast_path{@video_cast}   
    @episode_nr = '#' + @video_cast.episode_nr.to_s
    
    @episodes = VideoCast.order('episode_nr desc')

  end
  

  
   def crop
     @video_cast = VideoCast.find(params[:id])
     @crop_version = (params[:version] || :large).to_sym
     @video_cast.get_crop_version! @crop_version
     @version_geometry_width, @version_geometry_height = ImageUploader.version_dimensions[@crop_version]
   end
   
   def crop_update
     @video_cast = VideoCast.find(params[:id])
     @video_cast.crop_x = params[:video_cast]["crop_x"]
     @video_cast.crop_y = params[:video_cast]["crop_y"]
     @video_cast.crop_h = params[:video_cast]["crop_h"]
     @video_cast.crop_w = params[:video_cast]["crop_w"]
     @video_cast.crop_version = params[:video_cast]["crop_version"]
     @video_cast.save

     redirect_to video_cast_path(@video_cast)
   end
   
   def update
     if params[:video_cast][:image] && params[:video_cast][:remove_image] != '1'
       update! { crop_video_cast_path }
     else
       update! { video_cast_path(@video_cast) }
     end
    end
    
    

private  
  def sort_column  
    TextContent.column_names.include?(params[:sort]) ? params[:sort] : "title"  
  end 

  def sort_direction  
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
  end
  
  
end
