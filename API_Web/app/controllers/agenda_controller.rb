class AgendaController < ApplicationController
  before_action :set_agendas, only: [:show, :edit, :update, :destroy]

  # GET /agenda
  # GET /agenda.json
  def index
    @agenda = Agendas.all
  end

  # GET /agenda/1
  # GET /agenda/1.json
  def show
  end

  # GET /agenda/new
  def new
    @agendas = Agendas.new
  end

  # GET /agenda/1/edit
  def edit
  end

  # POST /agenda
  # POST /agenda.json
  def create
    @agendas = Agendas.new(agendas_params)

    respond_to do |format|
      if @agendas.save
        format.html { redirect_to @agendas, notice: 'Agendas was successfully created.' }
        format.json { render :show, status: :created, location: @agendas }
      else
        format.html { render :new }
        format.json { render json: @agendas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /agenda/1
  # PATCH/PUT /agenda/1.json
  def update
    respond_to do |format|
      if @agendas.update(agendas_params)
        format.html { redirect_to @agendas, notice: 'Agendas was successfully updated.' }
        format.json { render :show, status: :ok, location: @agendas }
      else
        format.html { render :edit }
        format.json { render json: @agendas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agenda/1
  # DELETE /agenda/1.json
  def destroy
    @agendas.destroy
    respond_to do |format|
      format.html { redirect_to agenda_url, notice: 'Agendas was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agendas
      @agendas = Agendas.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agendas_params
      params.require(:agendas).permit(:fecha, :hora_inicio, :hora_fin)
    end
end
