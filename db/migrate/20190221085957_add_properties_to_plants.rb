class AddPropertiesToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :parcel, :string
    add_column :plants, :massif, :string
    add_column :plants, :plantType, :string
    add_column :plants, :comment, :string
    add_column :plants, :creationDate, :string
    add_column :plants, :getter, :string
    add_column :plants, :family, :string
    add_column :plants, :existingNumber, :string
    add_column :plants, :newNumber, :string
  end
end
