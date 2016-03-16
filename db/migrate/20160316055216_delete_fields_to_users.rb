class DeleteFieldsToUsers < ActiveRecord::Migration
  def change
  	remove_column :expos, :is_online
  end
end
