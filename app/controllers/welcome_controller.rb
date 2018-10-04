class WelcomeController < ApplicationController
  skip_before_action :authenticate_user! 
  def index
    if current_user and !current_user.poste.nil?
      redirect_to "/dashboard/"+current_user.poste.code.downcase 
   
    end
  end
end
