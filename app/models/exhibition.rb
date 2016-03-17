class Exhibition < ActiveRecord::Base
	belongs_to :place
	belongs_to :artist, class_name: 'User'
	has_many :visits

	attr_accessor :accepts
end
