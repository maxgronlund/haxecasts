class AddCommentToCodeExample < ActiveRecord::Migration
  def up
    add_column :code_examples, :comment, :string
    
    VideoCast.all.each do |video_cast|
      video_cast.code_examples.each do |code_example|
        comment = ''
      end
    end
    
  end
  
  def down
    remove_column :code_examples, :comment
  end
end


