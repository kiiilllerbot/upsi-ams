class Student < ApplicationRecord
  belongs_to :faculty
  belongs_to :program
  belongs_to :user
end
