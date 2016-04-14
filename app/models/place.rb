# == Schema Information
#
# Table name: places
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  address     :string
#  zipcode     :string
#  city        :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
#Hand added comment :
#  area        :integer
class Place < ActiveRecord::Base
  belongs_to :user
  has_many :exhibitions

  validates_presence_of :name, :description, :address, :zipcode, :city, :user_id, :area

  has_attached_file :thumbnail, styles: { large: "1440x930>", medium: "720x465>", thumb: "550x355#" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/

  def to_s
    "#{name}"
  end
end
