class WallPlatesController < ApplicationController
  before_action :set_wall_plate, only: [:show, :edit, :update, :destroy]

  # GET /wall_plates
  # GET /wall_plates.json
  def index
    @wall_plates = WallPlate.all
  end

  # GET /wall_plates/1
  # GET /wall_plates/1.json
  def show
  end

  # GET /wall_plates/new
  def new
    @wall_plate = WallPlate.new
  end

  # GET /wall_plates/1/edit
  def edit
  end

  # POST /wall_plates
  # POST /wall_plates.json
  def create
    @wall_plate = WallPlate.new(wall_plate_params)

    respond_to do |format|
      if @wall_plate.save
        format.html { redirect_to @wall_plate, notice: 'Wall plate was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wall_plate }
      else
        format.html { render action: 'new' }
        format.json { render json: @wall_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wall_plates/1
  # PATCH/PUT /wall_plates/1.json
  def update
    respond_to do |format|
      if @wall_plate.update(wall_plate_params)
        format.html { redirect_to @wall_plate, notice: 'Wall plate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wall_plate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wall_plates/1
  # DELETE /wall_plates/1.json
  def destroy
    @wall_plate.destroy
    respond_to do |format|
      format.html { redirect_to wall_plates_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wall_plate
      @wall_plate = WallPlate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wall_plate_params
      params.require(:wall_plate).permit(:number)
    end
end
