class CreateTypeTaches < ActiveRecord::Migration[5.1]
  def change
    create_table :type_taches do |t|
      t.string :libelle
      t.string :code

      t.timestamps
    end
  end
end
