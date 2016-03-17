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

require 'test_helper'

class ExhibitionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
