class AddProfilIdColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :poste_id, :integer
  end
end
