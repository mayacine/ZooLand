class Tache < ApplicationRecord
  include ActiveModel::Validations
  belongs_to :animal
  belongs_to :user
  belongs_to :statut_tache
  belongs_to :type_tache
  validates_with TacheValidator

end
