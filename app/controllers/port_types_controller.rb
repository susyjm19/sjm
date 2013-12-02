class PortTypesController < ApplicationController
  before_action :set_port_type, only: [:show, :edit, :update, :destroy]

  # GET /port_types
  # GET /port_types.json
  def index
    @port_types = PortType.all
  end

  # GET /port_types/1
  # GET /port_types/1.json
  def show
  end

  # GET /port_types/new
  def new
    @port_type = PortType.new
  end

  # GET /port_types/1/edit
  def edit
  end

  # POST /port_types
  # POST /port_types.json
  def create
    @port_type = PortType.new(port_type_params)

    respond_to do |format|
      if @port_type.save
        format.html { redirect_to @port_type, notice: 'Port type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @port_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @port_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_types/1
  # PATCH/PUT /port_types/1.json
  def update
    respond_to do |format|
      if @port_type.update(port_type_params)
        format.html { redirect_to @port_type, notice: 'Port type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @port_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_types/1
  # DELETE /port_types/1.json
  def destroy
    @port_type.destroy
    respond_to do |format|
      format.html { redirect_to port_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_type
      @port_type = PortType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_type_params
      params.require(:port_type).permit(:name, :type)
    end
end
