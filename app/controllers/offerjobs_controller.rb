class OfferjobsController < ApplicationController
  before_action :set_offerjob, only: %i[ show edit update destroy ]

  # GET /offerjobs or /offerjobs.json
  def index
    @offerjobs = Offerjob.all
  end

  # GET /offerjobs/1 or /offerjobs/1.json
  def show
  end

  # GET /offerjobs/new
  def new
    @offerjob = Offerjob.new
  end

  # GET /offerjobs/1/edit
  def edit
  end

  # POST /offerjobs or /offerjobs.json
  def create
    @offerjob = Offerjob.new(offerjob_params)

    respond_to do |format|
      if @offerjob.save
        format.html { redirect_to offerjob_url(@offerjob), notice: "Offerjob was successfully created." }
        format.json { render :show, status: :created, location: @offerjob }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @offerjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offerjobs/1 or /offerjobs/1.json
  def update
    respond_to do |format|
      if @offerjob.update(offerjob_params)
        format.html { redirect_to offerjob_url(@offerjob), notice: "Offerjob was successfully updated." }
        format.json { render :show, status: :ok, location: @offerjob }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @offerjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offerjobs/1 or /offerjobs/1.json
  def destroy
    @offerjob.destroy

    respond_to do |format|
      format.html { redirect_to offerjobs_url, notice: "Offerjob was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offerjob
      @offerjob = Offerjob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def offerjob_params
      params.require(:offerjob).permit(:title, :description, :requirements, :salary, :location)
    end
end
