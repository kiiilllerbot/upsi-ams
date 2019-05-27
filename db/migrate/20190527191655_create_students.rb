class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.integer :user_id
      t.string :matric_id
      t.string :name
      t.string :student_status
      t.string :study_level
      t.string :current_semester
      t.string :student_type
      t.string :college
      t.string :ic_number
      t.string :passport_number
      t.text :permanent_address
      t.text :current_address
      t.string :country
      t.string :gender
      t.date :date_of_birth
      t.string :mobile_number
      t.string :blood_type
      t.string :race
      t.string :religion
      t.string :marital_status
      t.string :bank
      t.string :bank_account
      t.string :sponsor
      t.string :siswa_email
      t.string :personal_email
      t.string :cgpa_1
      t.string :cgpa_2
      t.string :cgpa_3
      t.string :cgpa_4
      t.string :cgpa_5
      t.string :cgpa_6
      t.string :cgpa_7
      t.string :cgpa_8
      t.references :faculty, foreign_key: true
      t.references :program, foreign_key: true

      t.timestamps
    end
    add_index :students, :matric_id, unique: true
    add_index :students, :ic_number, unique: true
    add_index :students, :passport_number, unique: true
  end
end
