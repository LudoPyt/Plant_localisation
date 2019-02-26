class AddFieldsToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :champ1, :string
    add_column :plants, :champ2, :string
    add_column :plants, :champ3, :string
    add_column :plants, :champ4, :string
    add_column :plants, :champ5, :string
    add_column :plants, :champ6, :string
    add_column :plants, :champ7, :string
    add_column :plants, :champ8, :string
    add_column :plants, :champ9, :string
    add_column :plants, :champ10, :string
  end
end
