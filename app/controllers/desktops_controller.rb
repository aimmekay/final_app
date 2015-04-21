class DesktopsController < ApplicationController
  before_action :set_desktop, only: [:show, :edit, :update, :destroy]
  
  def all
    render plain: Desktop.all
    
  end
  # GET /desktops
  # GET /desktops.json
  def index
    @desktops = Desktop.all
    @desktop = Desktop.new
  end

  # GET /desktops/1
  # GET /desktops/1.json
  def show
  end

  # GET /desktops/new
  def new
    @desktop = Desktop.new
  end

  # GET /desktops/1/edit
  def edit
  end

  # POST /desktops
  # POST /desktops.json
  def create
    @desktop = Desktop.new(desktop_params)

    respond_to do |format|
      if @desktop.save
        format.html { redirect_to @desktop, notice: 'Desktop was successfully created.' }
        format.json { render :show, status: :created, location: @desktop }
      else
        format.html { render :new }
        format.json { render json: @desktop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desktops/1
  # PATCH/PUT /desktops/1.json
  def update
    respond_to do |format|
      if @desktop.update(desktop_params)
        format.html { redirect_to @desktop, notice: 'Desktop was successfully updated.' }
        format.json { render :show, status: :ok, location: @desktop }
      else
        format.html { render :edit }
        format.json { render json: @desktop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desktops/1
  # DELETE /desktops/1.json
  def destroy
    @desktop.destroy
    respond_to do |format|
      format.html { redirect_to desktops_url, notice: 'Desktop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desktop
      @desktop = Desktop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desktop_params
      params.require(:desktop).permit(:manufacturer, :model, :jslgTag, :manufacturerTag, :serialNumber, :osType, :hostName, :ram, :hdd, :department, :location, :assignedTo, :status, :notes)
    end
end
