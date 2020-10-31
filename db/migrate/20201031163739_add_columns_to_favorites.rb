class AddColumnsToFavorites < ActiveRecord::Migration[6.0]
  def change
    add_column :favorites, :title, :string
    add_column :favorites, :poster_path, :string
    add_column :favorites, :overview, :string
  end
end
