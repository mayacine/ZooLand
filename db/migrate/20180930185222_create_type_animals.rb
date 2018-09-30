class CreateTypeAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :type_animals do |t|
      t.string :libelle
      t.string :code

      t.timestamps
    end
  end
end
