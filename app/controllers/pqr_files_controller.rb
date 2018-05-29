class PqrFilesController < ApplicationController
  before_action :set_pqr_file, only: [:show, :edit, :update, :destroy]

  # GET /pqr_files
  # GET /pqr_files.json
  def index
    @pqr_files = PqrFile.all
  end

  # GET /pqr_files/1
  # GET /pqr_files/1.json
  def show
  end

  # GET /pqr_files/new
  def new
    @pqr_file = PqrFile.new
  end

  # GET /pqr_files/1/edit
  def edit
  end

  # POST /pqr_files
  # POST /pqr_files.json
  def create
    @pqr_file = PqrFile.new(pqr_file_params)

    respond_to do |format|
      if @pqr_file.save
        format.html { redirect_to @pqr_file, notice: 'Pqr file was successfully created.' }
        format.json { render :show, status: :created, location: @pqr_file }
      else
        format.html { render :new }
        format.json { render json: @pqr_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pqr_files/1
  # PATCH/PUT /pqr_files/1.json
  def update
    respond_to do |format|
      if @pqr_file.update(pqr_file_params)
        format.html { redirect_to @pqr_file, notice: 'Pqr file was successfully updated.' }
        format.json { render :show, status: :ok, location: @pqr_file }
      else
        format.html { render :edit }
        format.json { render json: @pqr_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pqr_files/1
  # DELETE /pqr_files/1.json
  def destroy
    @pqr_file.destroy
    respond_to do |format|
      format.html { redirect_to pqr_files_url, notice: 'Pqr file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pqr_file
      @pqr_file = PqrFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pqr_file_params
      params.require(:pqr_file).permit(:url)
    end
end
