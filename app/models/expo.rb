class Expo < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name, :content, :opening_date, :closing_date, :capacity, :surface, :address_city, :address_street, :address_cp
end
