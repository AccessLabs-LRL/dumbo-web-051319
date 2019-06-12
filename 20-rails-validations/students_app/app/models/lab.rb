class Lab < ApplicationRecord
  has_many :student_labs
  has_many :students, through: :student_labs
end
