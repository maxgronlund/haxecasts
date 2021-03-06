class AddSyntaxToCodeExample < ActiveRecord::Migration
  def up
    add_column :code_examples, :haxe_syntax, :string
    
    VideoCast.all.each do |video_cast|
      video_cast.code_examples.each do |code_example|
        haxe_syntax = 'sh_haxe'
      end
    end
    
  end
  
  def down
    remove_column :code_examples, :haxe_syntax
  end
end
