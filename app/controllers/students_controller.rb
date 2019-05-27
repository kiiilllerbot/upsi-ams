class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except:[:index]
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = current_user.students.build
  end

  def edit
  end

  def create
    @student = current_user.students.build(student_params)

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_student
      @student = Student.find(params[:id])
    end

    def student_params
      params.require(:student).permit(:user_id, :matric_id, :name, :student_status, :study_level, :current_semester, :student_type, :college, :ic_number, :passport_number, :permanent_address, :current_address, :country, :gender, :date_of_birth, :mobile_number, :blood_type, :race, :religion, :marital_status, :bank, :bank_account, :sponsor, :siswa_email, :personal_email, :cgpa_1, :cgpa_2, :cgpa_3, :cgpa_4, :cgpa_5, :cgpa_6, :cgpa_7, :cgpa_8, :faculty_id, :program_id)
    end
end
