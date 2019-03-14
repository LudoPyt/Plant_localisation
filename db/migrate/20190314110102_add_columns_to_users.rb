class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :gender, :integer
    add_column :users, :date_of_birth, :date
    add_column :users, :country_id, :string
  end
end
