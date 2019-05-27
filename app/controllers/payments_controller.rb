class PaymentsController < ApplicationController
  load_and_authorize_resource
  before_action :set_payment, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @payments = Payment.where(["matric_id LIKE ?","%#{params[:search]}%"])
  end

  def show
  end

  def new
    @payment = current_user.payments.build
  end

  def edit
  end

  def create
    @payment = current_user.payments.build(payment_params)

    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: 'Payment was successfully created.' }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: 'Payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_payment
      @payment = Payment.find(params[:id])
    end
    
    def payment_params
      params.require(:payment).permit(:user_id, :amount, :description, :student_id,:matric_id)
    end
end