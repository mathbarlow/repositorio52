class AgendaController < ApplicationController
  before_action :set_agenda, only: [:show, :update, :destroy]

  # GET /agenda
  def index
    @agendas = Agenda.all

    render json: @agendas
  end

  # GET /agenda/1
  def show
    render json: @agendas
  end

  # POST /agenda
  def create
    @agendas = Agenda.new(agenda_params)

    if @agendas.save
      render json: @agendas, status: :created, location: @agendas
    else
      render json: @agendas.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /agenda/1
  def update
    if @agendas.update(agenda_params)
      render json: @agendas
    else
      render json: @agendas.errors, status: :unprocessable_entity
    end
  end

  # DELETE /agenda/1
  def destroy
    @agendas.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agenda
      @agendas = Agenda.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def agenda_params
      params.require(:agendas).permit(:fecha, :hora_inicio, :hora_fin)
    end
end
