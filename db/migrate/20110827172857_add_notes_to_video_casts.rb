class AddNotesToVideoCasts < ActiveRecord::Migration
  def change
    add_column :video_casts, :notes, :text
  end
end
