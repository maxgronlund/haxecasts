class AddPublishToVideoCast < ActiveRecord::Migration
  def change
    add_column :video_casts, :publish, :boolean
    
    VideoCast.all.each do |video_cast|
      video_cast.publish = true
      video_cast.save
    end
  end
end
