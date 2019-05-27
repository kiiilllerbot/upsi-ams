require 'test_helper'

class StudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get students_url
    assert_response :success
  end

  test "should get new" do
    get new_student_url
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post students_url, params: { student: { bank: @student.bank, bank_account: @student.bank_account, blood_type: @student.blood_type, cgpa_1: @student.cgpa_1, cgpa_2: @student.cgpa_2, cgpa_3: @student.cgpa_3, cgpa_4: @student.cgpa_4, cgpa_5: @student.cgpa_5, cgpa_6: @student.cgpa_6, cgpa_7: @student.cgpa_7, cgpa_8: @student.cgpa_8, college: @student.college, country: @student.country, current_address: @student.current_address, current_semester: @student.current_semester, date_of_birth: @student.date_of_birth, faculty_id: @student.faculty_id, gender: @student.gender, ic_number: @student.ic_number, marital_status: @student.marital_status, matric_id: @student.matric_id, mobile_number: @student.mobile_number, name: @student.name, passport_number: @student.passport_number, permanent_address: @student.permanent_address, personal_email: @student.personal_email, program_id: @student.program_id, race: @student.race, religion: @student.religion, siswa_email: @student.siswa_email, sponsor: @student.sponsor, student_status: @student.student_status, student_type: @student.student_type, study_level: @student.study_level, user_id: @student.user_id } }
    end

    assert_redirected_to student_url(Student.last)
  end

  test "should show student" do
    get student_url(@student)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_url(@student)
    assert_response :success
  end

  test "should update student" do
    patch student_url(@student), params: { student: { bank: @student.bank, bank_account: @student.bank_account, blood_type: @student.blood_type, cgpa_1: @student.cgpa_1, cgpa_2: @student.cgpa_2, cgpa_3: @student.cgpa_3, cgpa_4: @student.cgpa_4, cgpa_5: @student.cgpa_5, cgpa_6: @student.cgpa_6, cgpa_7: @student.cgpa_7, cgpa_8: @student.cgpa_8, college: @student.college, country: @student.country, current_address: @student.current_address, current_semester: @student.current_semester, date_of_birth: @student.date_of_birth, faculty_id: @student.faculty_id, gender: @student.gender, ic_number: @student.ic_number, marital_status: @student.marital_status, matric_id: @student.matric_id, mobile_number: @student.mobile_number, name: @student.name, passport_number: @student.passport_number, permanent_address: @student.permanent_address, personal_email: @student.personal_email, program_id: @student.program_id, race: @student.race, religion: @student.religion, siswa_email: @student.siswa_email, sponsor: @student.sponsor, student_status: @student.student_status, student_type: @student.student_type, study_level: @student.study_level, user_id: @student.user_id } }
    assert_redirected_to student_url(@student)
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete student_url(@student)
    end

    assert_redirected_to students_url
  end
end
