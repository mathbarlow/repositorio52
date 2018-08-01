class UniversidadesController < ApplicationController
  before_action :set_universidad, only: [:show, :edit, :update, :destroy]

  # GET /universidades
  # GET /universidades.json
  def index
    #@uniones = LocalUni.all
    @uniones = Localidad.all
  end

  # GET /universidades/1
  # GET /universidades/1.json
  def show
  end

  # GET /universidades/new
  def new
    @universidad = Universidad.new
  end

  # GET /universidades/1/edit
  def edit
  end

  # POST /universidades
  # POST /universidades.json
  def create
    @universidad = Universidad.new(universidad_params)

    respond_to do |format|
      if @universidad.save
        format.html { redirect_to @universidad, notice: 'Universidad was successfully created.' }
        format.json { render :show, status: :created, location: @universidad }
      else
        format.html { render :new }
        format.json { render json: @universidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /universidades/1
  # PATCH/PUT /universidades/1.json
  def update
    respond_to do |format|
      if @universidad.update(universidad_params)
        format.html { redirect_to @universidad, notice: 'Universidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @universidad }
      else
        format.html { render :edit }
        format.json { render json: @universidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /universidades/1
  # DELETE /universidades/1.json
  def destroy
    @universidad.destroy
    respond_to do |format|
      format.html { redirect_to universidades_url, notice: 'Universidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universidad
      @universidad = Universidad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def universidad_params
      params.require(:universidad).permit(:nit, :nombre, :telefono, :direccion)
    end
end
