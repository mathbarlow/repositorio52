class CalificacionController < ApplicationController
  before_action :set_calificaciones, only: [:show, :edit, :update, :destroy]

  # GET /calificacion
  # GET /calificacion.json
  def index
    @calificacion = Calificaciones.all
  end

  # GET /calificacion/1
  # GET /calificacion/1.json
  def show
  end

  # GET /calificacion/new
  def new
    @calificaciones = Calificaciones.new
  end

  # GET /calificacion/1/edit
  def edit
  end

  # POST /calificacion
  # POST /calificacion.json
  def create
    @calificaciones = Calificaciones.new(calificaciones_params)

    respond_to do |format|
      if @calificaciones.save
        format.html { redirect_to @calificaciones, notice: 'Calificaciones was successfully created.' }
        format.json { render :show, status: :created, location: @calificaciones }
      else
        format.html { render :new }
        format.json { render json: @calificaciones.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calificacion/1
  # PATCH/PUT /calificacion/1.json
  def update
    respond_to do |format|
      if @calificaciones.update(calificaciones_params)
        format.html { redirect_to @calificaciones, notice: 'Calificaciones was successfully updated.' }
        format.json { render :show, status: :ok, location: @calificaciones }
      else
        format.html { render :edit }
        format.json { render json: @calificaciones.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calificacion/1
  # DELETE /calificacion/1.json
  def destroy
    @calificaciones.destroy
    respond_to do |format|
      format.html { redirect_to calificacion_url, notice: 'Calificaciones was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calificaciones
      @calificaciones = Calificaciones.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calificaciones_params
      params.require(:calificaciones).permit(:puntaje, :comentario)
    end
end
