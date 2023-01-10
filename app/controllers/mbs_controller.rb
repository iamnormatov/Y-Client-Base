class MbsController < ApplicationController
  before_action :set_mb, only: %i[ show edit update destroy ]

  # GET /mbs or /mbs.json
  def index
    @mbs = Mb.all
  end
 
  # GET /mbs/1 or /mbs/1.json
  def show
  end

  # GET /mbs/new
  def new
    @mb = Mb.new
  end

  # GET /mbs/1/edit
  def edit
  end

  # POST /mbs or /mbs.json
  def create
    @mb = Mb.new(mb_params)

    respond_to do |format|
      if @mb.save
        format.html { redirect_to mboard_path(@mb.mboard) }
        format.json { render :show, status: :created, location: @mb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mbs/1 or /mbs/1.json
  def update
    respond_to do |format|
      if @mb.update(mb_params)
        format.html { redirect_to mb_url(@mb), notice: "Mb was successfully updated." }
        format.json { render :show, status: :ok, location: @mb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mbs/1 or /mbs/1.json
  def destroy
    @mb.destroy
    redirect_to mboard_path(@mb.mboard)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mb
      @mb = Mb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mb_params
      params.require(:mb).permit(:body, :mboard_id)
    end
end
