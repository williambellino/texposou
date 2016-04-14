class AddAttachmentThumbnailToPlaces < ActiveRecord::Migration
  def self.up
    change_table :places do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :places, :thumbnail
  end
end
