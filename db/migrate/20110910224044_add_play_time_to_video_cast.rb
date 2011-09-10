class AddPlayTimeToVideoCast < ActiveRecord::Migration
  def change
    add_column :video_casts, :play_time, :string
  end
end
