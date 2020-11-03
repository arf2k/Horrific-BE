class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :poster_path
      t.integer :popularity
      t.integer :vote_count
      t.boolean :video
      t.string :media_type
      t.boolean :adult
      t.string :backdrop_path
      t.string :original_language
      t.string :original_title
      t.integer :genre_ids 
      t.string :title 
      t.integer :vote_average 
      t.text :overview
      t.string :release_date
      t.string :origin_country
      t.string :name
      t.string :original_name
      t.string :first_air_date
      t.integer :apiId
    



      t.timestamps
    end
  end
end
