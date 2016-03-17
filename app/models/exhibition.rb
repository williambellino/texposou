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
	belongs_to :artist, class_name: 'User'
	has_many :visits

	validates :place, presence: true
	validates :artist, presence: true

	attr_accessor :accepts
end
