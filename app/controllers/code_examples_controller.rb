class CodeExamplesController < InheritedResources::Base
  
  belongs_to :video_cast, :optional => true
  
  
end
