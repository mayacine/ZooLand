class EmployeController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @user = User.find_by_current_user_poste(current_user)
  end

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(user_params)
    @user.code = generateur_de_code(7)
    #render json: @user
   # return
    respond_to do |format|
      if @user.save
        format.html { redirect_to "/employe", notice: 'Employe créé avec succés.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end 

  def update
  end

  def destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:nom, :prenom, :email, :code, :password, :password_confirmation, :date_de_naissance, :poste_id)
  end
end
