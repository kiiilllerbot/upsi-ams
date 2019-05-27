class RegistersController < ApplicationController
  before_action :set_register, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @registers = Register.where(["matric_id LIKE ?","%#{params[:search]}%"])
  end

  def show
  end

  def new
    @register = current_user.registers.build
  end

  def edit
  end

  def create
    @register = current_user.registers.build(register_params)

    respond_to do |format|
      if @register.save
        format.html { redirect_to @register, notice: 'Register was successfully created.' }
        format.json { render :show, status: :created, location: @register }
      else
        format.html { render :new }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @register.update(register_params)
        format.html { redirect_to @register, notice: 'Register was successfully updated.' }
        format.json { render :show, status: :ok, location: @register }
      else
        format.html { render :edit }
        format.json { render json: @register.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @register.destroy
    respond_to do |format|
      format.html { redirect_to registers_url, notice: 'Register was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_register
      @register = Register.find(params[:id])
    end

    def register_params
      params.require(:register).permit(:user_id, :description, :semester, :student_id,:matric_id)
    end
end