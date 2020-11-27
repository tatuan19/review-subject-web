class SubjectFilesController < ApplicationController
  before_action :set_subject_file, only: [:show, :edit, :update, :destroy]

  # GET /subject_files
  # GET /subject_files.json
  def index
    @subject_files = SubjectFile.all
  end

  # GET /subject_files/1
  # GET /subject_files/1.json
  def show
  end

  # GET /subject_files/new
  def new
    @subject_file = SubjectFile.new
  end

  # GET /subject_files/1/edit
  def edit
  end

  # POST /subject_files
  # POST /subject_files.json
  def create
    @subject_file = SubjectFile.new(subject_file_params)

    respond_to do |format|
      if @subject_file.save
        format.html { redirect_to @subject_file, notice: 'Subject file was successfully created.' }
        format.json { render :show, status: :created, location: @subject_file }
      else
        format.html { render :new }
        format.json { render json: @subject_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subject_files/1
  # PATCH/PUT /subject_files/1.json
  def update
    respond_to do |format|
      if @subject_file.update(subject_file_params)
        format.html { redirect_to @subject_file, notice: 'Subject file was successfully updated.' }
        format.json { render :show, status: :ok, location: @subject_file }
      else
        format.html { render :edit }
        format.json { render json: @subject_file.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subject_files/1
  # DELETE /subject_files/1.json
  def destroy
    @subject_file.destroy
    respond_to do |format|
      format.html { redirect_to subject_files_url, notice: 'Subject file was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject_file
      @subject_file = SubjectFile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def subject_file_params
      params.require(:subject_file).permit(:subject_id, :title, :description, :file_url)
    end
end