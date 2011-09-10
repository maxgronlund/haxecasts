class ResourceUrlsController < InheritedResources::Base
    belongs_to :video_cast, :optional => true
end
