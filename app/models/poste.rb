class Poste < ApplicationRecord
    has_many :users

    def self.poste_find_by_current_user(current_user)
        if current_user.poste.code.upcase == POSTE_ADMIN
            all
        elsif current_user.poste.code.upcase == POSTE_MANAGER
            where.not(code: [POSTE_ADMIN, POSTE_MANAGER, POSTE_VISITEUR])
        else
            
        end
    end
end
