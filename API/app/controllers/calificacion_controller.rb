class CalificacionController < ApplicationController
  before_action :set_calificaciones, only: [:show, :update, :destroy]

  # GET /calificacion
  def index
    @calificacion = Calificaciones.all

    render json: @calificacion
  end

  # GET /calificacion/1
  def show
    render json: @calificaciones
  end

  # POST /calificacion
  def create
    @calificaciones = Calificaciones.new(calificaciones_params)

    if @calificaciones.save
      render json: @calificaciones, status: :created, location: @calificaciones
    else
      render json: @calificaciones.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /calificacion/1
  def update
    if @calificaciones.update(calificaciones_params)
      render json: @calificaciones
    else
      render json: @calificaciones.errors, status: :unprocessable_entity
    end
  end

  # DELETE /calificacion/1
  def destroy
    @calificaciones.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calificaciones
      @calificaciones = Calificaciones.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def calificaciones_params
      params.require(:calificaciones).permit(:puntaje, :comentario)
    end
end
