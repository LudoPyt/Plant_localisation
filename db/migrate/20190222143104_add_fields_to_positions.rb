class AddFieldsToPositions < ActiveRecord::Migration[5.2]
  def change
    add_column :positions, :champ1, :string
    add_column :positions, :champ2, :string
    add_column :positions, :champ3, :string
    add_column :positions, :champ4, :string
    add_column :positions, :champ5, :string
    add_column :positions, :champ6, :string
    add_column :positions, :champ7, :string
    add_column :positions, :hamp8, :string
    add_column :positions, :champ9, :string
    add_column :positions, :champ10, :string
  end
end
