class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.datetime :coming_at
      t.references :user, index: true, foreign_key: true
      t.references :exhibition, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
