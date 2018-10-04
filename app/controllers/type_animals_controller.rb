class TypeAnimalsController < ApplicationController
  before_action :set_type_animal, only: [:show, :edit, :update, :destroy]

  # GET /type_animals
  # GET /type_animals.json
  def index
    @type_animals = TypeAnimal.all
  end

  # GET /type_animals/1
  # GET /type_animals/1.json
  def show
  end

  # GET /type_animals/new
  def new
    @type_animal = TypeAnimal.new
  end

  # GET /type_animals/1/edit
  def edit
  end

  # POST /type_animals
  # POST /type_animals.json
  def create
    @type_animal = TypeAnimal.new(type_animal_params)
    @type_animal.code = generateur_de_code(7)
    respond_to do |format|
      if @type_animal.save
        format.html { redirect_to @type_animal, notice: 'Type animal was successfully created.' }
        format.json { render :show, status: :created, location: @type_animal }
      else
        format.html { render :new }
        format.json { render json: @type_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_animals/1
  # PATCH/PUT /type_animals/1.json
  def update
    respond_to do |format|
      if @type_animal.update(type_animal_params)
        format.html { redirect_to @type_animal, notice: 'Type animal was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_animal }
      else
        format.html { render :edit }
        format.json { render json: @type_animal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_animals/1
  # DELETE /type_animals/1.json
  def destroy
    @type_animal.destroy
    respond_to do |format|
      format.html { redirect_to type_animals_url, notice: 'Type animal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_animal
      @type_animal = TypeAnimal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_animal_params
      params.require(:type_animal).permit(:libelle, :code)
    end
end
