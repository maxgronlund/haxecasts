class CreateResourceUrls < ActiveRecord::Migration
  def change
    create_table :resource_urls do |t|
      t.string :resource_url
      t.integer :video_cast_id

      t.timestamps
    end
  end
end
