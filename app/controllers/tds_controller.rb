class TdsController < ApplicationController
  before_action :set_td, only: %i[ show edit update destroy ]

  def index
    @project = Project.find(params[:project_id])
    @tds = @project.tds 
    @td = @project.tds.new
  end
 
  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @td = @project.tds.new
  end

  def edit
  end

  def create
    @td = Td.new(td_params)

    respond_to do |format|
      if @td.save
        format.html { redirect_to project_tds_url(@td.project_id), notice: "Td was successfully created." }
        format.json { render :show, status: :created, location: @td }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @td.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @td.update(td_params)
        format.html { redirect_to project_tds_url(@td.project_id), notice: "Td was successfully updated." }
        format.json { render :show, status: :ok, location: @td }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @td.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @td.destroy

    redirect_to project_tds_url(@td.project_id)
 
  end

  private
    def set_td
      @td = Td.find(params[:id])
    end

    def td_params
      params.require(:td).permit(:name, :project_id)
    end
end
