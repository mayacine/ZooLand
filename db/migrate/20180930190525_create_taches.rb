class CreateTaches < ActiveRecord::Migration[5.1]
  def change
    create_table :taches do |t|
      t.string :libelle
      t.string :code
      t.text :detail_tache
      t.references :animal, foreign_key: true
      t.references :user, foreign_key: true
      t.string :cree_par
      t.datetime :date_debut
      t.datetime :date_fin
      t.references :statut_tache, foreign_key: true
      t.references :type_tache, foreign_key: true

      t.timestamps
    end
  end
end
