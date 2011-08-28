class AddVideoThumbToVideoCasts < ActiveRecord::Migration
  def change
    add_column :video_casts, :image, :string
    add_column :video_casts,:crop_params, :string,  :limit => 1024
  end
end
