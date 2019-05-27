class FacultiesController < ApplicationController
  before_action :set_faculty, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @faculties = Faculty.all
  end

  def show
  end

  def new
    @faculty = current_user.faculties.build
  end

  def edit
  end

  def create
    @faculty = current_user.faculties.build(faculty_params)

    respond_to do |format|
      if @faculty.save
        format.html { redirect_to @faculty, notice: 'Faculty was successfully created.' }
        format.json { render :show, status: :created, location: @faculty }
      else
        format.html { render :new }
        format.json { render json: @faculty.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @faculty.update(faculty_params)
        format.html { redirect_to @faculty, notice: 'Faculty was successfully updated.' }
        format.json { render :show, status: :ok, location: @faculty }
      else
        format.html { render :edit }
        format.json { render json: @faculty.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @faculty.destroy
    respond_to do |format|
      format.html { redirect_to faculties_url, notice: 'Faculty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_faculty
      @faculty = Faculty.find(params[:id])
    end
    
    def faculty_params
      params.require(:faculty).permit(:user_id, :name, :description)
    end
end
