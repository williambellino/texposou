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

class Place < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :name, :description, :address, :zipcode, :city, :user_id
end
