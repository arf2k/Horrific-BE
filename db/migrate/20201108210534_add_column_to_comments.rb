class AddColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :yt_id, :string
  end
end
