class ProgramsController < ApplicationController
  load_and_authorize_resource
  before_action :set_program, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @programs = Program.where(["name LIKE ?","%#{params[:search]}%"])
  end

  def show
  end

  def new
    @program = current_user.programs.build
  end

  def edit
  end

  def create
    @program = current_user.programs.build(program_params)

    respond_to do |format|
      if @program.save
        format.html { redirect_to @program, notice: 'Program was successfully created.' }
        format.json { render :show, status: :created, location: @program }
      else
        format.html { render :new }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @program.update(program_params)
        format.html { redirect_to @program, notice: 'Program was successfully updated.' }
        format.json { render :show, status: :ok, location: @program }
      else
        format.html { render :edit }
        format.json { render json: @program.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @program.destroy
    respond_to do |format|
      format.html { redirect_to programs_url, notice: 'Program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_program
      @program = Program.find(params[:id])
    end

    def program_params
      params.require(:program).permit(:user_id, :name, :description)
    end
end