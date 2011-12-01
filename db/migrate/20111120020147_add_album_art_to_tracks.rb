class AddAlbumArtToTracks < ActiveRecord::Migration
  def self.up
     add_column :tracks, :artwork_file_name,    :string
     add_column :tracks, :artwork_content_type, :string
     add_column :tracks, :artwork_file_size,    :integer
     add_column :tracks, :artwork_updated_at,   :datetime
   end

   def self.down
     remove_column :tracks, :artwork_file_name
     remove_column :tracks, :artwork_content_type
     remove_column :tracks, :artwork_file_size
     remove_column :tracks, :artwork_updated_at
   end
end
