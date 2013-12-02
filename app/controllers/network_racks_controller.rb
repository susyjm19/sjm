class NetworkRacksController < ApplicationController
  before_action :set_network_rack, only: [:show, :edit, :update, :destroy]

  # GET /network_racks
  # GET /network_racks.json
  def index
    @network_racks = NetworkRack.all
  end

  # GET /network_racks/1
  # GET /network_racks/1.json
  def show
  end

  # GET /network_racks/new
  def new
    @network_rack = NetworkRack.new
  end

  # GET /network_racks/1/edit
  def edit
  end

  # POST /network_racks
  # POST /network_racks.json
  def create
    @network_rack = NetworkRack.new(network_rack_params)

    respond_to do |format|
      if @network_rack.save
        format.html { redirect_to @network_rack, notice: 'Network rack was successfully created.' }
        format.json { render action: 'show', status: :created, location: @network_rack }
      else
        format.html { render action: 'new' }
        format.json { render json: @network_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /network_racks/1
  # PATCH/PUT /network_racks/1.json
  def update
    respond_to do |format|
      if @network_rack.update(network_rack_params)
        format.html { redirect_to @network_rack, notice: 'Network rack was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @network_rack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /network_racks/1
  # DELETE /network_racks/1.json
  def destroy
    @network_rack.destroy
    respond_to do |format|
      format.html { redirect_to network_racks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_network_rack
      @network_rack = NetworkRack.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def network_rack_params
      params.require(:network_rack).permit(:brand, :type)
    end
end
