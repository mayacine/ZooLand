# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# manager, vétérinaire, gardien, admin
base = {manager: "Manager", veterinaire: "Vétérinaire", gardien: "Gardien", admin: "Admin"}

base.each do |key, value|
    model = Poste.find_by(code: key.upcase) || Poste.new({libelle: value, code: key.upcase})
    model.libelle = value
    model.save!
end 

#  TypeAnimal  #crocodile, lion, hippopotame, tigre, singe
base = {crocodile: "Crocodile", lion: "Lion", hippopotame: "Hippopotame", tigre: "Tigre", singe: "Singe"}
base.each do |key, value|
    model = TypeAnimal.find_by(code: key.upcase) || TypeAnimal.new({libelle: value, code: key.upcase})
    model.libelle = value
    model.save!
end 

#  StatutTache libelle code # creer , a faire , fini 
base = {creer: "Créee", a_faire: "A Faire", fini: "Finie"}
base.each do |key, value|
    model = StatutTache.find_by(code: key.upcase) || StatutTache.new({libelle: value, code: key.upcase})
    model.libelle = value
    model.save!
end 

#  TypeTache libelle code # nourir , soigner 
base = {nourrir: "Nourrir", soigner: "Soigner"}
base.each do |key, value|
    model = TypeTache.find_by(code: key.upcase) || TypeTache.new({libelle: value, code: key.upcase})
    model.libelle = value
    model.save!
end 


#########

admin = User.find_by(email: 'admin@zooland.com') || User.new
admin.prenom = "admin"
admin.nom = "admin"
admin.email = 'admin@zooland.com'
admin.password = 'passer1234'
admin.poste = Poste.find_by(code: 'ADMIN')
admin.save(validate: false)