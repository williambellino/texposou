class Exhibition < ActiveRecord::Base
	belongs_to :place
	belongs_to :artist, class_name: 'User'
	has_many :visits

	validates :place, presence: true
	validates :artist, presence: true

	attr_accessor :accepts
end
