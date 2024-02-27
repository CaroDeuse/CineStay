class CreateVillas < ActiveRecord::Migration[7.1]
  def change
    create_table :villas do |t|
      t.string :name
      t.string :address
      t.string :movie_genre
      t.string :description
      t.integer :price_per_night
      t.integer :guests_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
