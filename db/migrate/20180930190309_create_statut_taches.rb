class CreateStatutTaches < ActiveRecord::Migration[5.1]
  def change
    create_table :statut_taches do |t|
      t.string :libelle
      t.string :code

      t.timestamps
    end
  end
end
