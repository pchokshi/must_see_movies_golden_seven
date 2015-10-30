class CreateMoovies < ActiveRecord::Migration
  def change
    create_table :moovies do |t|
      t.string :title
      t.integer :year
      t.integer :duration
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
