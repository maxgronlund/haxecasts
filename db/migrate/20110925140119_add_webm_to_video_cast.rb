class AddWebmToVideoCast < ActiveRecord::Migration
  def change
    add_column :video_casts, :webm, :string
  end
end
