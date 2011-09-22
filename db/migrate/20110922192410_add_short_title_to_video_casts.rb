class AddShortTitleToVideoCasts < ActiveRecord::Migration
  def up
    add_column :video_casts, :short_title, :string
    
#    VideoCast.all.each do |video_cast|
#      video_cast.short_title = 'video_cast.title'
#    end
  end
  
  def down
    remove_column :video_casts, :short_title
  end
end
