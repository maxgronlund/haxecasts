class AddTitleToResourceUrl < ActiveRecord::Migration
  def up
   add_column :resource_urls, :title, :string
    
   ResourceUrl.all.each do |resource|
     resource.title = resource.resource_url
     resource.save
   end
  end
  
  def down
    remove_column :resource_urls, :title
  end
end
