# == Schema Information
#
# Table name: visits
#
#  id            :integer          not null, primary key
#  coming_at     :datetime
#  user_id       :integer
#  exhibition_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Visit < ActiveRecord::Base
  belongs_to :user
  belongs_to :exhibition

  validates :exhibition, presence: true
end
