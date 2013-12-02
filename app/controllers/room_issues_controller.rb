class RoomIssuesController < ApplicationController
  before_action :set_room_issue, only: [:show, :edit, :update, :destroy]

  # GET /room_issues
  # GET /room_issues.json
  def index
    @room_issues = RoomIssue.all
  end

  # GET /room_issues/1
  # GET /room_issues/1.json
  def show
  end

  # GET /room_issues/new
  def new
    @room_issue = RoomIssue.new
  end

  # GET /room_issues/1/edit
  def edit
  end

  # POST /room_issues
  # POST /room_issues.json
  def create
    @room_issue = RoomIssue.new(room_issue_params)

    respond_to do |format|
      if @room_issue.save
        format.html { redirect_to @room_issue, notice: 'Room issue was successfully created.' }
        format.json { render action: 'show', status: :created, location: @room_issue }
      else
        format.html { render action: 'new' }
        format.json { render json: @room_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_issues/1
  # PATCH/PUT /room_issues/1.json
  def update
    respond_to do |format|
      if @room_issue.update(room_issue_params)
        format.html { redirect_to @room_issue, notice: 'Room issue was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @room_issue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_issues/1
  # DELETE /room_issues/1.json
  def destroy
    @room_issue.destroy
    respond_to do |format|
      format.html { redirect_to room_issues_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_issue
      @room_issue = RoomIssue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_issue_params
      params.require(:room_issue).permit(:activityDate)
    end
end
