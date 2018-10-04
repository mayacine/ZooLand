class StatutTachesController < ApplicationController
  before_action :set_statut_tach, only: [:show, :edit, :update, :destroy]

  # GET /statut_taches
  # GET /statut_taches.json
  def index
    @statut_taches = StatutTache.all
  end

  # GET /statut_taches/1
  # GET /statut_taches/1.json
  def show
  end

  # GET /statut_taches/new
  def new
    @statut_tach = StatutTache.new
  end

  # GET /statut_taches/1/edit
  def edit
  end

  # POST /statut_taches
  # POST /statut_taches.json
  def create
    @statut_tach = StatutTache.new(statut_tach_params)
    @statut_tach.code = generateur_de_code(7)
    respond_to do |format|
      if @statut_tach.save
        format.html { redirect_to @statut_tach, notice: 'Statut tache was successfully created.' }
        format.json { render :show, status: :created, location: @statut_tach }
      else
        format.html { render :new }
        format.json { render json: @statut_tach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /statut_taches/1
  # PATCH/PUT /statut_taches/1.json
  def update
    respond_to do |format|
      if @statut_tach.update(statut_tach_params)
        format.html { redirect_to @statut_tach, notice: 'Statut tache was successfully updated.' }
        format.json { render :show, status: :ok, location: @statut_tach }
      else
        format.html { render :edit }
        format.json { render json: @statut_tach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /statut_taches/1
  # DELETE /statut_taches/1.json
  def destroy
    @statut_tach.destroy
    respond_to do |format|
      format.html { redirect_to statut_taches_url, notice: 'Statut tache was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_statut_tach
      @statut_tach = StatutTache.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def statut_tach_params
      params.require(:statut_tach).permit(:libelle, :code)
    end
end
