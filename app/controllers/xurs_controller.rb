class XursController < ApplicationController
  before_action :set_xur, only: %i[ show destroy ]

  # GET /xurs or /xurs.json
  def index
    @project = Project.find(params[:project_id])
    @xurs = @project.xurs
    @xur = @project.xurs.new
  end
 
  # GET /xurs/1 or /xurs/1.json
  def show
  end

  # GET /xurs/new
  def new
    @xur = Xur.new
  end


  # POST /xurs or /xurs.json
  def create
    @xur = Xur.new(xur_params)

    respond_to do |format|
      if @xur.save
        format.html { redirect_to project_xurs_url(@xur.project_id), notice: "Xur was successfully created." }
        format.json { render :show, status: :created, location: @xur }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @xur.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @xur.destroy
    if @xur.destroy
      redirect_to project_xurs_url(@xur.project_id)
      
    end
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_xur
      @xur = Xur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def xur_params
      params.require(:xur).permit(:pxur, :project_id)
    end
end
