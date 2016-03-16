# == Schema Information
#
# Table name: expos
#
#  id             :integer          not null, primary key
#  name           :string
#  content        :text
#  opening_date   :date
#  closing_date   :date
#  capacity       :integer
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  is_handi       :boolean
#  surface        :float
#  address_city   :string
#  address_street :string
#  address_cp     :string
#  address_infos  :string
#

require 'test_helper'

class ExpoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
