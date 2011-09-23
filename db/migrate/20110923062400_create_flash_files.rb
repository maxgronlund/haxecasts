class CreateFlashFiles < ActiveRecord::Migration
  def change
    create_table :flash_files do |t|
      t.integer :video_cast_id
      t.string :swf

      t.timestamps
    end
  end
end
