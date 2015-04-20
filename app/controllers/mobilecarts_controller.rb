class MobilecartsController < ApplicationController
  before_action :set_mobilecart, only: [:show, :edit, :update, :destroy]

  # GET /mobilecarts
  # GET /mobilecarts.json
  def index
    @mobilecarts = Mobilecart.all
  end

  # GET /mobilecarts/1
  # GET /mobilecarts/1.json
  def show
  end

  # GET /mobilecarts/new
  def new
    @mobilecart = Mobilecart.new
  end

  # GET /mobilecarts/1/edit
  def edit
  end

  # POST /mobilecarts
  # POST /mobilecarts.json
  def create
    @mobilecart = Mobilecart.new(mobilecart_params)

    respond_to do |format|
      if @mobilecart.save
        format.html { redirect_to @mobilecart, notice: 'Mobilecart was successfully created.' }
        format.json { render :show, status: :created, location: @mobilecart }
      else
        format.html { render :new }
        format.json { render json: @mobilecart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mobilecarts/1
  # PATCH/PUT /mobilecarts/1.json
  def update
    respond_to do |format|
      if @mobilecart.update(mobilecart_params)
        format.html { redirect_to @mobilecart, notice: 'Mobilecart was successfully updated.' }
        format.json { render :show, status: :ok, location: @mobilecart }
      else
        format.html { render :edit }
        format.json { render json: @mobilecart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mobilecarts/1
  # DELETE /mobilecarts/1.json
  def destroy
    @mobilecart.destroy
    respond_to do |format|
      format.html { redirect_to mobilecarts_url, notice: 'Mobilecart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mobilecart
      @mobilecart = Mobilecart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mobilecart_params
      params.require(:mobilecart).permit(:manufacturer, :model, :jslgTag, :manufacturerTag, :serialNumber, :osType, :hostName, :department, :location, :assignedTo, :status, :notes)
    end
end
