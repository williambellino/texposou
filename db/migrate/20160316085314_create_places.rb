class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :description
      t.string :address
      t.string :zipcode
      t.string :city
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
