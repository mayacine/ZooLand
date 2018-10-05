# json.array! @taches, partial: 'taches/tach', as: :tach
json.array!(@taches) do |tache|
    json.title tache.libelle + "\nstatut: (#{tache.statut_tache.libelle}) \n " + tache.date_debut.strftime("%H:%M") + " - " + tache.date_fin.strftime("%H:%M") 
    json.start tache.date_debut
    json.end tache.date_fin
    json.url tach_url(tache)
  end

