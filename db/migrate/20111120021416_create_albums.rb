class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artwork_file_name
      t.string :artwork_content_type
      t.integer :artwork_file_size
      t.datetime :artwork_updated_at

      t.timestamps
    end
  end
end
