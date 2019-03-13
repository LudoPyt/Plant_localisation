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

  NORTH = 48.160691
  EAST = 2.227912
  SOUTH = 48.159382
  WEST = 2.224657

  # def initialize_x
  #   if longitude == nil
  #     50
  #   end
  # end

  # def initialize_y
  #   if latitude == nil
  #     50
  #   end
  # end

  # 0.0 -> 100.0
  def to_percent_x
    offset = EAST - longitude
    total = EAST - WEST
    return 0 if offset.zero?
    offset / total * 100.0
  end

  # 0.0 -> 100.0
  def to_percent_y
    offset = SOUTH - latitude
    total = SOUTH - NORTH
    return 0 if offset.zero?
    offset / total * 100.0
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


