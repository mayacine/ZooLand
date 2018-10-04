
class TacheValidator < ActiveModel::Validator
    def validate(record)
      if (record.type_tache.code == CODE_TYPE_TACHE_NOURRIR and record.user.poste.code != POSTE_GARDIEN) or (record.type_tache.code == CODE_TYPE_TACHE_SOIGNER and record.user.poste.code != POSTE_VETERINAIRE) 
        record.errors[:type_tache] << " les #{POSTE_GARDIEN}s ne sont habilités qu'à #{CODE_TYPE_TACHE_NOURRIR} et les #{POSTE_VETERINAIRE}s ne sont habilités qu'à #{CODE_TYPE_TACHE_SOIGNER}"
      end
      
      
    end
end