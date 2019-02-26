class RenameColumnInPositions < ActiveRecord::Migration[5.2]
  def change
    rename_column :positions, :hamp8, :champ8
  end
end
