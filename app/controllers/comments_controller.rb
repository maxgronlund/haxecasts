class CommentsController < InheritedResources::Base
  
  belongs_to :video_cast, :optional => true

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
  
end
