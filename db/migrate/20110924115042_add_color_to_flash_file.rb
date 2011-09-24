class AddColorToFlashFile < ActiveRecord::Migration
  def change
    add_column :flash_files, :title, :string
  end
end
