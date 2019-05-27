class Meeting < ApplicationRecord
  belongs_to :student
  belongs_to :user

  validates :description, presence:true
  validates :time_and_date, presence:true
  validates :matric_id, presence:true
end