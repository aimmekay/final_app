class DtusController < ApplicationController
  before_action :set_dtu, only: [:show, :edit, :update, :destroy]

  # GET /dtus
  # GET /dtus.json
  def index
    @dtus = Dtu.all
  end

  # GET /dtus/1
  # GET /dtus/1.json
  def show
  end

  # GET /dtus/new
  def new
    @dtu = Dtu.new
  end

  # GET /dtus/1/edit
  def edit
  end

  # POST /dtus
  # POST /dtus.json
  def create
    @dtu = Dtu.new(dtu_params)

    respond_to do |format|
      if @dtu.save
        format.html { redirect_to @dtu, notice: 'Dtu was successfully created.' }
        format.json { render :show, status: :created, location: @dtu }
      else
        format.html { render :new }
        format.json { render json: @dtu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dtus/1
  # PATCH/PUT /dtus/1.json
  def update
    respond_to do |format|
      if @dtu.update(dtu_params)
        format.html { redirect_to @dtu, notice: 'Dtu was successfully updated.' }
        format.json { render :show, status: :ok, location: @dtu }
      else
        format.html { render :edit }
        format.json { render json: @dtu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dtus/1
  # DELETE /dtus/1.json
  def destroy
    @dtu.destroy
    respond_to do |format|
      format.html { redirect_to dtus_url, notice: 'Dtu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dtu
      @dtu = Dtu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dtu_params
      params.require(:dtu).permit(:manufacturer, :model, :serialNumber, :jslgTag, :macAddress, :hostName, :department, :location, :assignedTo, :status, :notes)
    end
end
