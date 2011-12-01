class AddAlbumIdToTracks < ActiveRecord::Migration
  def self.up
    add_column :tracks, :album_id, :integer
    remove_column :tracks, :file
  end
  
  def self.down
    remove_column :tracks, :album_id
  end
end
