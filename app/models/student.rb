class Student < ApplicationRecord
  belongs_to :faculty
  belongs_to :program
  belongs_to :user

  	validates :matric_id, presence:true
    validates :name, presence:true
    validates :student_status, presence:true
    validates :study_level, presence:true
    validates :current_semester, presence:true
    validates :student_type, presence:true
    validates :college, presence:true
    validates :ic_number, presence:true
    validates :passport_number, presence:true
  	validates :permanent_address, presence:true
  	validates :current_address, presence:true
    validates :country, presence:true
    validates :gender, presence:true
  	validates :date_of_birth, presence:true
    validates :mobile_number, presence:true
    validates :blood_type, presence:true
    validates :race, presence:true
    validates :religion, presence:true
    validates :marital_status, presence:true
    validates :bank, presence:true
    validates :bank_account, presence:true
    validates :sponsor, presence:true
    validates :siswa_email, presence:true
    validates :personal_email, presence:true
end
