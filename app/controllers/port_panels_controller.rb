class PortPanelsController < ApplicationController
  before_action :set_port_panel, only: [:show, :edit, :update, :destroy]

  # GET /port_panels
  # GET /port_panels.json
  def index
    @port_panels = PortPanel.all
  end

  # GET /port_panels/1
  # GET /port_panels/1.json
  def show
  end

  # GET /port_panels/new
  def new
    @port_panel = PortPanel.new
  end

  # GET /port_panels/1/edit
  def edit
  end

  # POST /port_panels
  # POST /port_panels.json
  def create
    @port_panel = PortPanel.new(port_panel_params)

    respond_to do |format|
      if @port_panel.save
        format.html { redirect_to @port_panel, notice: 'Port panel was successfully created.' }
        format.json { render action: 'show', status: :created, location: @port_panel }
      else
        format.html { render action: 'new' }
        format.json { render json: @port_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_panels/1
  # PATCH/PUT /port_panels/1.json
  def update
    respond_to do |format|
      if @port_panel.update(port_panel_params)
        format.html { redirect_to @port_panel, notice: 'Port panel was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @port_panel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_panels/1
  # DELETE /port_panels/1.json
  def destroy
    @port_panel.destroy
    respond_to do |format|
      format.html { redirect_to port_panels_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_panel
      @port_panel = PortPanel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_panel_params
      params[:port_panel]
    end
end
