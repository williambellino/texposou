class CreateExpos < ActiveRecord::Migration
  def change
    create_table :expos do |t|
      t.string :name
      t.text :content
      t.date :opening_date
      t.date :closing_date
      t.integer :capacity
      t.boolean :is_online
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
