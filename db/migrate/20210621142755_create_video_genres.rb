class CreateVideoGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :video_genres do |t|
      t.references :video, null: false, foreign_key: true
      t.references :genre, null: false, foreign_key: true
      t.index [:video_id, :genre_id], unique: true

      t.timestamps
    end
  end
end
