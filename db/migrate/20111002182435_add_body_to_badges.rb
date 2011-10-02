class AddBodyToBadges < ActiveRecord::Migration
  def change
    add_column :badges, :body, :text
  end
end
