class CreateCodeExamples < ActiveRecord::Migration
  def change
    create_table :code_examples do |t|
      t.string :title
      t.text :body
      t.integer :video_cast_id

      t.timestamps
    end
  end
end
