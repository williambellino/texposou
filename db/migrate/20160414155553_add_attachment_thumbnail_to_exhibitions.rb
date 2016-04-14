class AddAttachmentThumbnailToExhibitions < ActiveRecord::Migration
  def self.up
    change_table :exhibitions do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :exhibitions, :thumbnail
  end
end
