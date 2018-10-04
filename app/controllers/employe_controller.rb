class EmployeController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.find_by_current_user_poste(current_user)
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
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to "/employe", notice: 'Employe mis à jour avec succés' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to "/employe", notice: 'Employé supprimé avec succés' }
      format.json { head :no_content }
    end
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
