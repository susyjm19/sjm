class DeviceDetailsController < ApplicationController
  before_action :set_device_detail, only: [:show, :edit, :update, :destroy]

  # GET /device_details
  # GET /device_details.json
  def index
    @device_details = DeviceDetail.all
  end

  # GET /device_details/1
  # GET /device_details/1.json
  def show
  end

  # GET /device_details/new
  def new
    @device_detail = DeviceDetail.new
  end

  # GET /device_details/1/edit
  def edit
  end

  # POST /device_details
  # POST /device_details.json
  def create
    @device_detail = DeviceDetail.new(device_detail_params)

    respond_to do |format|
      if @device_detail.save
        format.html { redirect_to @device_detail, notice: 'Device detail was successfully created.' }
        format.json { render action: 'show', status: :created, location: @device_detail }
      else
        format.html { render action: 'new' }
        format.json { render json: @device_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /device_details/1
  # PATCH/PUT /device_details/1.json
  def update
    respond_to do |format|
      if @device_detail.update(device_detail_params)
        format.html { redirect_to @device_detail, notice: 'Device detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @device_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /device_details/1
  # DELETE /device_details/1.json
  def destroy
    @device_detail.destroy
    respond_to do |format|
      format.html { redirect_to device_details_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_device_detail
      @device_detail = DeviceDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def device_detail_params
      params.require(:device_detail).permit(:macAddress, :ipAddress, :osVersion, :function)
    end
end
