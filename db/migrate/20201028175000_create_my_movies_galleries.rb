class CreateMyMoviesGalleries < ActiveRecord::Migration[6.0]
  def change
    create_table :my_movies_galleries do |t|

      t.timestamps
    end
  end
end
