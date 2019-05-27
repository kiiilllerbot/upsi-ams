class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :faculties
  has_many :programs
  has_many :students
  has_many :bugs
  has_many :meetings
  has_many :payments
  has_many :registers
end
