class FlashFilesController < InheritedResources::Base
  load_and_authorize_resource
  belongs_to :video_cast, :optional => true
  
  
end
