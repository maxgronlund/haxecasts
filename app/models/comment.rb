class Comment < ActiveRecord::Base
  
  belongs_to :video_cast
  validates_presence_of :body
  
  
  def user 
    User.find(user_id)
  end
  
  def self.search(search)
    if search
      where('body LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
