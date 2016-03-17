class EditExhibitions < ActiveRecord::Migration
  def change
  	rename_column :exhibitions, :artist, :artist_id
  end
end
