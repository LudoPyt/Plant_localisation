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
#  champ1         :string
#  champ2         :string
#  champ3         :string
#  champ4         :string
#  champ5         :string
#  champ6         :string
#  champ7         :string
#  champ8         :string
#  champ9         :string
#  champ10        :string
#

class Plant < ApplicationRecord
    has_many :positions
    has_one_attached :picture
end
