class AddSizeToFlashFile < ActiveRecord::Migration
  def change
    add_column :flash_files, :size_x, :integer
    add_column :flash_files, :size_y, :integer
  end
end
