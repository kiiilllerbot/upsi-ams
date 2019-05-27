require "application_system_test_case"

class StudentsTest < ApplicationSystemTestCase
  setup do
    @student = students(:one)
  end

  test "visiting the index" do
    visit students_url
    assert_selector "h1", text: "Students"
  end

  test "creating a Student" do
    visit students_url
    click_on "New Student"

    fill_in "Bank", with: @student.bank
    fill_in "Bank account", with: @student.bank_account
    fill_in "Blood type", with: @student.blood_type
    fill_in "Cgpa 1", with: @student.cgpa_1
    fill_in "Cgpa 2", with: @student.cgpa_2
    fill_in "Cgpa 3", with: @student.cgpa_3
    fill_in "Cgpa 4", with: @student.cgpa_4
    fill_in "Cgpa 5", with: @student.cgpa_5
    fill_in "Cgpa 6", with: @student.cgpa_6
    fill_in "Cgpa 7", with: @student.cgpa_7
    fill_in "Cgpa 8", with: @student.cgpa_8
    fill_in "College", with: @student.college
    fill_in "Country", with: @student.country
    fill_in "Current address", with: @student.current_address
    fill_in "Current semester", with: @student.current_semester
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Faculty", with: @student.faculty_id
    fill_in "Gender", with: @student.gender
    fill_in "Ic number", with: @student.ic_number
    fill_in "Marital status", with: @student.marital_status
    fill_in "Matric", with: @student.matric_id
    fill_in "Mobile number", with: @student.mobile_number
    fill_in "Name", with: @student.name
    fill_in "Passport number", with: @student.passport_number
    fill_in "Permanent address", with: @student.permanent_address
    fill_in "Personal email", with: @student.personal_email
    fill_in "Program", with: @student.program_id
    fill_in "Race", with: @student.race
    fill_in "Religion", with: @student.religion
    fill_in "Siswa email", with: @student.siswa_email
    fill_in "Sponsor", with: @student.sponsor
    fill_in "Student status", with: @student.student_status
    fill_in "Student type", with: @student.student_type
    fill_in "Study level", with: @student.study_level
    fill_in "User", with: @student.user_id
    click_on "Create Student"

    assert_text "Student was successfully created"
    click_on "Back"
  end

  test "updating a Student" do
    visit students_url
    click_on "Edit", match: :first

    fill_in "Bank", with: @student.bank
    fill_in "Bank account", with: @student.bank_account
    fill_in "Blood type", with: @student.blood_type
    fill_in "Cgpa 1", with: @student.cgpa_1
    fill_in "Cgpa 2", with: @student.cgpa_2
    fill_in "Cgpa 3", with: @student.cgpa_3
    fill_in "Cgpa 4", with: @student.cgpa_4
    fill_in "Cgpa 5", with: @student.cgpa_5
    fill_in "Cgpa 6", with: @student.cgpa_6
    fill_in "Cgpa 7", with: @student.cgpa_7
    fill_in "Cgpa 8", with: @student.cgpa_8
    fill_in "College", with: @student.college
    fill_in "Country", with: @student.country
    fill_in "Current address", with: @student.current_address
    fill_in "Current semester", with: @student.current_semester
    fill_in "Date of birth", with: @student.date_of_birth
    fill_in "Faculty", with: @student.faculty_id
    fill_in "Gender", with: @student.gender
    fill_in "Ic number", with: @student.ic_number
    fill_in "Marital status", with: @student.marital_status
    fill_in "Matric", with: @student.matric_id
    fill_in "Mobile number", with: @student.mobile_number
    fill_in "Name", with: @student.name
    fill_in "Passport number", with: @student.passport_number
    fill_in "Permanent address", with: @student.permanent_address
    fill_in "Personal email", with: @student.personal_email
    fill_in "Program", with: @student.program_id
    fill_in "Race", with: @student.race
    fill_in "Religion", with: @student.religion
    fill_in "Siswa email", with: @student.siswa_email
    fill_in "Sponsor", with: @student.sponsor
    fill_in "Student status", with: @student.student_status
    fill_in "Student type", with: @student.student_type
    fill_in "Study level", with: @student.study_level
    fill_in "User", with: @student.user_id
    click_on "Update Student"

    assert_text "Student was successfully updated"
    click_on "Back"
  end

  test "destroying a Student" do
    visit students_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student was successfully destroyed"
  end
end
