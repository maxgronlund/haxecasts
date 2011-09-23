class FlashFile < ActiveRecord::Base
  
  belongs_to :video_cast
  
#  attr_accessible :swf
  mount_uploader :swf, SwfUploader
  
  
end
