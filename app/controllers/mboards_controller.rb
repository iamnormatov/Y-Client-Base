class MboardsController < ApplicationController
  before_action :set_mboard, only: %i[ show edit update destroy ]

  # GET /mboards or /mboards.json
  def index
    @project = Project.find(params[:project_id])
    @mboards = Mboard.all
  end
 
  # GET /mboards/1 or /mboards/1.json
  def show
    @mb = @mboard.mbs.new
    @mbs = @mboard.mbs
  end

  # GET /mboards/new
  def new
    @pr = Project.find(params[:project_id])
    @mboard = @pr.mboards.new
  end

  # GET /mboards/1/edit
  def edit
  end

  # POST /mboards or /mboards.json
  def create
    @mboard = Mboard.new(mboard_params)

    respond_to do |format|
      if @mboard.save
        format.html { redirect_to project_mboards_path(@mboard.project_id), notice: "Mboard was successfully created." }
        format.json { render :show, status: :created, location: @mboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mboards/1 or /mboards/1.json
  def update
    respond_to do |format|
      if @mboard.update(mboard_params)
        format.html { redirect_to mboard_url(@mboard), notice: "Mboard was successfully updated." }
        format.json { render :show, status: :ok, location: @mboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mboards/1 or /mboards/1.json
  def destroy
    @mboard.destroy

    respond_to do |format|
      format.html { redirect_to project_mboards_url(@mboard.project), notice: "Mboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mboard
      @mboard = Mboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mboard_params
      params.require(:mboard).permit(:name, :body, :project_id)
    end
end
