class ChangeColumnName2 < ActiveRecord::Migration[5.2]
  def change
    rename_column :plants, :champ4, :caracteristics
  end
end
