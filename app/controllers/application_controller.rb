class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def generateur_de_code(longueur)
    result = []
    longueur.to_i.times{ result << rand(9)}
    result.join
  end

  protected
    def after_sign_in_path_for(resource)
      if !resource.poste.nil?
        "/dashboard/"+resource.poste.code.downcase 
      else    
        "/dashboard/index"
      end
    end
end
