class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
      rename_column :plants, :champ1, :description
      rename_column :plants, :champ2, :color
      rename_column :plants, :champ3, :maintenance
      change_column :plants, :description, :text
      change_column :plants, :maintenance, :text
  end
end
