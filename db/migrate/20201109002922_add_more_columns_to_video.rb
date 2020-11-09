class AddMoreColumnsToVideo < ActiveRecord::Migration[6.0]
  def change
    add_column :videos, :comment_id, :integer
  end
end
