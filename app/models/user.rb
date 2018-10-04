class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include ActiveModel::Validations
  belongs_to :poste
  devise :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable
  validates :password, confirmation: true
  validates_with UserValidator

  def self.poste_find_by_current_user(current_user)
    if current_user.poste.code.upcase == POSTE_ADMIN
        all
    elsif current_user.poste.code.upcase == POSTE_MANAGER
        where.not(code: [POSTE_ADMIN, POSTE_VISITEUR])
    else
        
    end
  end

  def get_number_of_user_by_poste(poste_code)
    User.where(poste_id: Poste.find_by_code(poste_code).id).size
  end
end
