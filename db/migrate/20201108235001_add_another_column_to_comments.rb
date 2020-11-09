class AddAnotherColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :video_id, :string 
  end
end
