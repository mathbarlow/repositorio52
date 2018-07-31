class MateriasController < ApplicationController
  before_action :set_materia, only: [:show, :update, :destroy]

  # GET /materias
  def index
    @materias = Materia.all

    render json: @materias
  end

  # GET /materias/1
  def show
    render json: @materia
  end

  # POST /materias
  def create
    @materia = Materia.new(materia_params)

    if @materia.save
      render json: @materia, status: :created, location: @materia
    else
      render json: @materia.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /materias/1
  def update
    if @materia.update(materia_params)
      render json: @materia
    else
      render json: @materia.errors, status: :unprocessable_entity
    end
  end

  # DELETE /materias/1
  def destroy
    @materia.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia
      @materia = Materia.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def materia_params
      params.require(:materia).permit(:nombre)
    end
end
