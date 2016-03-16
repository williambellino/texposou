class AddFieldToExpos < ActiveRecord::Migration
  def change
  	add_column :expos, :is_handi, :boolean
  	add_column :expos, :surface, :float
  	add_column :expos, :address_city, :string
  	add_column :expos, :address_street, :string
  	add_column :expos, :address_cp, :string
  	add_column :expos, :address_infos, :string
  end
end
