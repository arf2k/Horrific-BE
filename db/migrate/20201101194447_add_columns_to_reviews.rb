class AddColumnsToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :review, :text
  end
end
