class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :yt_id
      t.string :title
      t.string :comment
      t.string :avatar
      t.string :username
  

      t.timestamps
    end
  end
end
