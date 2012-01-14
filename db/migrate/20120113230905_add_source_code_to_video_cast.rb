class AddSourceCodeToVideoCast < ActiveRecord::Migration
  def change
    add_column :video_casts, :source_code, :string
  end
end
