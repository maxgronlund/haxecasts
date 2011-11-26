class AddSlugToVideoCasts < ActiveRecord::Migration
  def change
    add_column :video_casts, :slug, :string
    add_index :video_casts, :slug, :unique => true
  end
end
