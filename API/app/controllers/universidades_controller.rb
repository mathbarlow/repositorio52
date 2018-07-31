class UniversidadesController < ApplicationController
  before_action :set_universidad, only: [:show, :update, :destroy]

  # GET /universidades
  def index
    @universidades = Universidad.all
=begin
  
=end
    r = []

    for un in @universidades
      u = Hash.new
      u[:nombre] = un.nombre
      u[:localidad] = un.localidades
      r.push(u)
    end

    render json: r
  end

  # GET /universidades/1
  def show
    render json: @universidad
  end

  # POST /universidades
  def create
    @universidad = Universidad.new(universidad_params)

    if @universidad.save
      render json: @universidad, status: :created, location: @universidad
    else
      render json: @universidad.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /universidades/1
  def update
    if @universidad.update(universidad_params)
      render json: @universidad
    else
      render json: @universidad.errors, status: :unprocessable_entity
    end
  end

  # DELETE /universidades/1
  def destroy
    @universidad.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_universidad
      @universidad = Universidad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def universidad_params
      params.require(:universidad).permit(:nit, :nombre, :telefono, :direcion)
    end
end
