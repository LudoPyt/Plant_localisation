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

  NORTH = 48.160324
  EAST = 2.225492
  SOUTH = 48.159681
  WEST = 2.226475

  # 0.0 -> 100.0
  def to_percent_x
    # if (longitude > WEST)
    #   longitude = WEST
    # end
    # if (longitude < EAST)
    #   longitude = EAST
    # end
    offset = WEST - longitude
    total = WEST - EAST
    return 0 if offset.zero?
    (offset * 100.0)/ total
  end

  # 0.0 -> 100.0
  def to_percent_y
    # if (latitude > NORTH)
    #   latitude = NORTH
    # end
    # if (latitude < SOUTH)
    #   latitude = SOUTH
    # end
    offset = NORTH - latitude
    total = NORTH - SOUTH
    return 0 if offset.zero?
    (offset * 100.0)/ total
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |position|
        csv << position.attributes.values_at(*column_names)
      end
    end
  end
end


