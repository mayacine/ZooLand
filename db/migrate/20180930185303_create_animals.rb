class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :nom
      t.string :code
      t.references :type_animal, foreign_key: true

      t.timestamps
    end
  end
end
