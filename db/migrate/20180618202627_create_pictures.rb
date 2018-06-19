class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.string :description
      t.string :photographer
      t.string :url
      t.integer :like_count

      t.timestamps
    end
  end
end
