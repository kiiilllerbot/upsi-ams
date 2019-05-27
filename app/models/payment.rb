
class Payment < ApplicationRecord
  belongs_to :student
  belongs_to :user

  validates :amount, presence:true
  validates :description, presence:true
  validates :matric_id, presence:true
end