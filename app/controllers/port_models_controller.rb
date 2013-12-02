class PortModelsController < ApplicationController
  before_action :set_port_model, only: [:show, :edit, :update, :destroy]

  # GET /port_models
  # GET /port_models.json
  def index
    @port_models = PortModel.all
  end

  # GET /port_models/1
  # GET /port_models/1.json
  def show
  end

  # GET /port_models/new
  def new
    @port_model = PortModel.new
  end

  # GET /port_models/1/edit
  def edit
  end

  # POST /port_models
  # POST /port_models.json
  def create
    @port_model = PortModel.new(port_model_params)

    respond_to do |format|
      if @port_model.save
        format.html { redirect_to @port_model, notice: 'Port model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @port_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @port_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /port_models/1
  # PATCH/PUT /port_models/1.json
  def update
    respond_to do |format|
      if @port_model.update(port_model_params)
        format.html { redirect_to @port_model, notice: 'Port model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @port_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /port_models/1
  # DELETE /port_models/1.json
  def destroy
    @port_model.destroy
    respond_to do |format|
      format.html { redirect_to port_models_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port_model
      @port_model = PortModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_model_params
      params[:port_model]
    end
end
