class CodeExamplesController < InheritedResources::Base
  
  belongs_to :video_cast, :optional => true
  
  def update
    update! { video_cast_path( @code_example.video_cast) }
  end
  
  def new
    new! { video_cast_path( @code_example.video_cast) }
  end

  def create
    create! { video_cast_path( @code_example.video_cast) }
  end
  

  def destroy
    destroy! { session[:go_to_after_edit] }
  end
  
  
  
end
