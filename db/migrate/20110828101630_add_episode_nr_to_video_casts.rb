class AddEpisodeNrToVideoCasts < ActiveRecord::Migration
  def change
    add_column :video_casts, :episode_nr, :integer
  end
end
