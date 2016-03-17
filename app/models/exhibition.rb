class Exhibition < ActiveRecord::Base
	belongs_to :place
	belongs_to :artist, class_name: 'User'
end
