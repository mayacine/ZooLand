class AddMultipleColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :code, :string
    add_column :users, :prenom, :string
    add_column :users, :nom, :string
    add_column :users, :date_de_naissance, :date
  end
end
