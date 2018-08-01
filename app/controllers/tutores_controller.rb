class TutoresController < ApplicationController
  before_action :set_tutor, only: [:show, :edit, :update, :destroy]

  # GET /tutores
  # GET /tutores.json
  def index
    @tutores = Tutor.all
  end

  # GET /tutores/1
  # GET /tutores/1.json
  def show
  end

  # GET /tutores/new
  def new
    @tutor = Tutor.new
  end

  # GET /tutores/1/edit
  def edit
  end

  # POST /tutores
  # POST /tutores.json
  def create
    @tutor = Tutor.new(tutor_params)

    respond_to do |format|
      if @tutor.save
        format.html { redirect_to @tutor, notice: 'Tutor was successfully created.' }
        format.json { render :show, status: :created, location: @tutor }
      else
        format.html { render :new }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tutores/1
  # PATCH/PUT /tutores/1.json
  def update
    respond_to do |format|
      if @tutor.update(tutor_params)
        format.html { redirect_to @tutor, notice: 'Tutor was successfully updated.' }
        format.json { render :show, status: :ok, location: @tutor }
      else
        format.html { render :edit }
        format.json { render json: @tutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tutores/1
  # DELETE /tutores/1.json
  def destroy
    @tutor.destroy
    respond_to do |format|
      format.html { redirect_to tutores_url, notice: 'Tutor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tutor
      @tutor = Tutor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tutor_params
      params.require(:tutor).permit(:cedula, :nombre, :apellido, :telefono, :direccion)
    end
end
