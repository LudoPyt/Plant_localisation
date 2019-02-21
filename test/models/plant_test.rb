# == Schema Information
#
# Table name: plants
#
#  id             :bigint(8)        not null, primary key
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  parcel         :string
#  massif         :string
#  plantType      :string
#  comment        :string
#  creationDate   :string
#  getter         :string
#  family         :string
#  existingNumber :string
#  newNumber      :string
#

require 'test_helper'

class PlantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
