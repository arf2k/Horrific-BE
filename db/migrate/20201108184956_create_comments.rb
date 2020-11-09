class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :comment 
      t.integer :user_id
      t.string :video_id
      t.text :username 
      t.text :avatar

      t.timestamps
    end
  end
end
