class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.string :latitude
      t.string :longitude
      t.references :plant_name, foreign_key: true

      t.timestamps
    end
  end
end
