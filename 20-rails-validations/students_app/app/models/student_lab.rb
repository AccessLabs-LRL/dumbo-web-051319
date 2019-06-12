class StudentLab < ApplicationRecord
  belongs_to :student
  belongs_to :lab
end
