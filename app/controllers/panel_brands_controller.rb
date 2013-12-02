class PanelBrandsController < ApplicationController
  before_action :set_panel_brand, only: [:show, :edit, :update, :destroy]

  # GET /panel_brands
  # GET /panel_brands.json
  def index
    @panel_brands = PanelBrand.all
  end

  # GET /panel_brands/1
  # GET /panel_brands/1.json
  def show
  end

  # GET /panel_brands/new
  def new
    @panel_brand = PanelBrand.new
  end

  # GET /panel_brands/1/edit
  def edit
  end

  # POST /panel_brands
  # POST /panel_brands.json
  def create
    @panel_brand = PanelBrand.new(panel_brand_params)

    respond_to do |format|
      if @panel_brand.save
        format.html { redirect_to @panel_brand, notice: 'Panel brand was successfully created.' }
        format.json { render action: 'show', status: :created, location: @panel_brand }
      else
        format.html { render action: 'new' }
        format.json { render json: @panel_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /panel_brands/1
  # PATCH/PUT /panel_brands/1.json
  def update
    respond_to do |format|
      if @panel_brand.update(panel_brand_params)
        format.html { redirect_to @panel_brand, notice: 'Panel brand was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @panel_brand.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /panel_brands/1
  # DELETE /panel_brands/1.json
  def destroy
    @panel_brand.destroy
    respond_to do |format|
      format.html { redirect_to panel_brands_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_panel_brand
      @panel_brand = PanelBrand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def panel_brand_params
      params.require(:panel_brand).permit(:name)
    end
end
