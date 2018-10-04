module ApplicationHelper
    def generateur_de_code(longueur)
        result = []
        longueur.to_i.times{ result << rand(9)}
        result.join
    end
end
