class AddEnableVideoToVideoCast < ActiveRecord::Migration
  def change
    add_column :video_casts, :enable_video, :boolean
    
    VideoCast.all.each do |video|
       video.enable_video = true
       video.save
     end
     
  end
end
