class DeskphonesController < ApplicationController
  before_action :set_deskphone, only: [:show, :edit, :update, :destroy]

  # GET /deskphones
  # GET /deskphones.json
  def index
    @deskphones = Deskphone.all
  end

  # GET /deskphones/1
  # GET /deskphones/1.json
  def show
  end

  # GET /deskphones/new
  def new
    @deskphone = Deskphone.new
  end

  # GET /deskphones/1/edit
  def edit
  end

  # POST /deskphones
  # POST /deskphones.json
  def create
    @deskphone = Deskphone.new(deskphone_params)

    respond_to do |format|
      if @deskphone.save
        format.html { redirect_to @deskphone, notice: 'Deskphone was successfully created.' }
        format.json { render :show, status: :created, location: @deskphone }
      else
        format.html { render :new }
        format.json { render json: @deskphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deskphones/1
  # PATCH/PUT /deskphones/1.json
  def update
    respond_to do |format|
      if @deskphone.update(deskphone_params)
        format.html { redirect_to @deskphone, notice: 'Deskphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @deskphone }
      else
        format.html { render :edit }
        format.json { render json: @deskphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deskphones/1
  # DELETE /deskphones/1.json
  def destroy
    @deskphone.destroy
    respond_to do |format|
      format.html { redirect_to deskphones_url, notice: 'Deskphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deskphone
      @deskphone = Deskphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deskphone_params
      params.require(:deskphone).permit(:manufacturer, :model, :serialNumber, :phoneNumber, :macAddress, :department, :location, :assignedTo, :status, :notes)
    end
end
