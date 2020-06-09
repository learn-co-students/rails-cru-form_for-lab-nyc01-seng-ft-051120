class RemoveSongsFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :songs, :string
  end
end
