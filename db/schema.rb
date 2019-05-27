# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_27_193442) do

  create_table "bugs", force: :cascade do |t|
    t.integer "user_id"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "faculties", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "time_and_date"
    t.text "description"
    t.integer "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "matric_id"
    t.index ["student_id"], name: "index_meetings_on_student_id"
  end

  create_table "programs", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer "user_id"
    t.string "matric_id"
    t.string "name"
    t.string "student_status"
    t.string "study_level"
    t.string "current_semester"
    t.string "student_type"
    t.string "college"
    t.string "ic_number"
    t.string "passport_number"
    t.text "permanent_address"
    t.text "current_address"
    t.string "country"
    t.string "gender"
    t.date "date_of_birth"
    t.string "mobile_number"
    t.string "blood_type"
    t.string "race"
    t.string "religion"
    t.string "marital_status"
    t.string "bank"
    t.string "bank_account"
    t.string "sponsor"
    t.string "siswa_email"
    t.string "personal_email"
    t.string "cgpa_1"
    t.string "cgpa_2"
    t.string "cgpa_3"
    t.string "cgpa_4"
    t.string "cgpa_5"
    t.string "cgpa_6"
    t.string "cgpa_7"
    t.string "cgpa_8"
    t.integer "faculty_id"
    t.integer "program_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["faculty_id"], name: "index_students_on_faculty_id"
    t.index ["ic_number"], name: "index_students_on_ic_number", unique: true
    t.index ["matric_id"], name: "index_students_on_matric_id", unique: true
    t.index ["passport_number"], name: "index_students_on_passport_number", unique: true
    t.index ["program_id"], name: "index_students_on_program_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.boolean "admin", default: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
