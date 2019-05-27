class Payment < ApplicationRecord
  belongs_to :student
  belongs_to :user
end
