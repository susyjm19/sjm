class OidModelsController < ApplicationController
  before_action :set_oid_model, only: [:show, :edit, :update, :destroy]

  # GET /oid_models
  # GET /oid_models.json
  def index
    @oid_models = OidModel.all
  end

  # GET /oid_models/1
  # GET /oid_models/1.json
  def show
  end

  # GET /oid_models/new
  def new
    @oid_model = OidModel.new
  end

  # GET /oid_models/1/edit
  def edit
  end

  # POST /oid_models
  # POST /oid_models.json
  def create
    @oid_model = OidModel.new(oid_model_params)

    respond_to do |format|
      if @oid_model.save
        format.html { redirect_to @oid_model, notice: 'Oid model was successfully created.' }
        format.json { render action: 'show', status: :created, location: @oid_model }
      else
        format.html { render action: 'new' }
        format.json { render json: @oid_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oid_models/1
  # PATCH/PUT /oid_models/1.json
  def update
    respond_to do |format|
      if @oid_model.update(oid_model_params)
        format.html { redirect_to @oid_model, notice: 'Oid model was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @oid_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oid_models/1
  # DELETE /oid_models/1.json
  def destroy
    @oid_model.destroy
    respond_to do |format|
      format.html { redirect_to oid_models_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oid_model
      @oid_model = OidModel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oid_model_params
      params[:oid_model]
    end
end
