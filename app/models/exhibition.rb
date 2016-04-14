# == Schema Information
#
# Table name: exhibitions
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  opening_at  :datetime
#  closing_at  :datetime
#  capacity    :integer
#  artist_id   :integer
#  place_id    :integer
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Exhibition < ActiveRecord::Base
	belongs_to :place
	belongs_to :user
	belongs_to :artist, class_name: 'User'
	has_many :visits

	validates :place, presence: true
	validates :artist, presence: true
	validates :opening_at, presence: true

	has_attached_file :thumbnail, styles: { large: "1440x930>", medium: "720x465>", thumb: "550x355#" }
	validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/

	attr_accessor :accepts

	def to_s
		"#{name}"
	end
end
