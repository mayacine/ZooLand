class AddAvatarColumnToAnimals < ActiveRecord::Migration[5.1]
  def change
    add_attachment :animals, :avatar
  end
end
