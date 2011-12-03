class CommentsController < InheritedResources::Base
  load_and_authorize_resource
  belongs_to :video_cast, :optional => true
  helper_method :sort_column, :sort_direction
  
  def index
    @comments = Comment.search(params[:search]).order(sort_column + " " + sort_direction).page(params[:page]).per(25)
  end

  def create
    @comment = Comment.new(params[:comment]) 
    @comment.user_id = current_user.id
    if @comment.save  
        redirect_to video_cast_path(@comment.video_cast), :notice => "Comment sucessfully added!"
    else  
      render "new"  
    end
  end
  
  def update
    update! { video_cast_path(@comment.video_cast) }
  end
  
  def destroy
    destroy! { session[:go_to_after_edit] }
  end
  
  def sort_column  
    Comment.column_names.include?(params[:sort]) ? params[:sort] : "created_at"  
  end 

  def sort_direction  
    %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
  end
  
end
