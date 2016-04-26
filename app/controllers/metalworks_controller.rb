class MetalworksController < ApplicationController
  before_action :set_metalwork, only: [:show, :edit, :update, :destroy]

  # GET /metalworks
  # GET /metalworks.json
  def index
    @metalworks = Metalwork.all
  end

  # GET /metalworks/1
  # GET /metalworks/1.json
  def show
  end

  # GET /metalworks/new
  def new
    @metalwork = Metalwork.new
  end

  # GET /metalworks/1/edit
  def edit
  end

  # POST /metalworks
  # POST /metalworks.json
  def create
    @metalwork = Metalwork.new(metalwork_params)

    respond_to do |format|
      if @metalwork.save
        format.html { redirect_to metalworks_url, notice: 'Dati processo inseriti.' }
        format.json { render :show, status: :created, location: @metalwork }
      else
        format.html { render :new }
        format.json { render json: @metalwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metalworks/1
  # PATCH/PUT /metalworks/1.json
  def update
    respond_to do |format|
      if @metalwork.update(metalwork_params)
        format.html { redirect_to metalworks_url, notice: 'Dati processo salvati.' }
        format.json { render :show, status: :ok, location: @metalwork }
      else
        format.html { render :edit }
        format.json { render json: @metalwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metalworks/1
  # DELETE /metalworks/1.json
  def destroy
    @metalwork.destroy
    respond_to do |format|
      format.html { redirect_to metalworks_url, notice: 'Processo eliminato.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metalwork
      @metalwork = Metalwork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metalwork_params
      params.require(:metalwork).permit(:name, :description, :picture, :machine_id)
    end
end
