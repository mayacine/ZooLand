
class UserValidator < ActiveModel::Validator
    def validate(record)
      if  ((Time.now.utc - record.date_de_naissance.to_datetime) / 1.year).round < MIN_AGE_POUR_TRAVAILLER
        record.errors[:date_de_naissance] << "L'age minimal est + #{MIN_AGE_POUR_TRAVAILLER} ans"
      end
      if (record.poste.code == POSTE_MANAGER and record.get_number_of_user_by_poste(POSTE_MANAGER) >= MAX_MANAGER) or (record.poste.code == POSTE_GARDIEN and record.get_number_of_user_by_poste(POSTE_GARDIEN) >= MAX_GARDIEN) or (record.poste.code == POSTE_VETERINAIRE and record.get_number_of_user_by_poste(POSTE_VETERINAIRE) >= MAX_VETERINAIRE)
        record.errors[:poste] << "Nombre max (max_manager: #{MAX_MANAGER}, max_vétérinaire: #{MAX_VETERINAIRE}, max_gardien: #{MAX_GARDIEN}) de poste atteint pour #{record.poste.libelle}"
      end
      
    end
end