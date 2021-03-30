class CreateFavoriteSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_songs do |t|
      t.integer :favorite_list_id
      t.integer :song_id

      t.timestamps
    end
  end
end
