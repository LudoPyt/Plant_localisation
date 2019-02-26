class RemoveFieldsFromPositions < ActiveRecord::Migration[5.2]
  def change
    remove_column :positions, :champ1
    remove_column :positions, :champ2
    remove_column :positions, :champ3
    remove_column :positions, :champ4
    remove_column :positions, :champ5
    remove_column :positions, :champ6
    remove_column :positions, :champ7
    remove_column :positions, :champ8
    remove_column :positions, :champ9
    remove_column :positions, :champ10
  end
end
