class TachesController < ApplicationController
  before_action :set_tach, only: [:show, :edit, :update, :destroy]

  # GET /taches
  # GET /taches.json
  def index
    @taches = Tache.all
  end

  # GET /taches/1
  # GET /taches/1.json
  def show
  end

  # GET /taches/new
  def new
    @tach = Tache.new
  end

  # GET /taches/1/edit
  def edit
  end

  # POST /taches
  # POST /taches.json
  def create
    @tach = Tache.new(tach_params)
    @tach.code = generateur_de_code(7)
    @tach.statut_tache_id = StatutTache.find_by(code: CODE_TACHE_AFAIRE).id
    respond_to do |format|
      if @tach.save
        format.html { redirect_to @tach, notice: 'Tache was successfully created.' }
        format.json { render :show, status: :created, location: @tach }
      else
        format.html { render :new }
        format.json { render json: @tach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taches/1
  # PATCH/PUT /taches/1.json
  def update
    respond_to do |format|
      if @tach.update(tach_params)
        format.html { redirect_to @tach, notice: 'Tache was successfully updated.' }
        format.json { render :show, status: :ok, location: @tach }
      else
        format.html { render :edit }
        format.json { render json: @tach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taches/1
  # DELETE /taches/1.json
  def destroy
    @tach.destroy
    respond_to do |format|
      format.html { redirect_to taches_url, notice: 'Tache was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tach
      @tach = Tache.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tach_params
      params.require(:tache).permit(:libelle, :code, :detail_tache, :animal_id, :user_id, :cree_par, :date_debut, :date_fin, :statut_tache_id, :type_tache_id)
    end
end
