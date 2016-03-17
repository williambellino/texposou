class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.string :name
      t.text :description
      t.datetime :opening_at
      t.datetime :closing_at
      t.integer :capacity
      t.integer :artist
      t.references :place, index: true, foreign_key: true
      t.string :status

      t.timestamps null: false
    end
  end
end
