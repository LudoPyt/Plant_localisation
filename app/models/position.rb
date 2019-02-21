# == Schema Information
#
# Table name: positions
#
#  id         :bigint(8)        not null, primary key
#  latitude   :float
#  longitude  :float
#  plant_id   :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Position < ApplicationRecord
  belongs_to :plant
end
