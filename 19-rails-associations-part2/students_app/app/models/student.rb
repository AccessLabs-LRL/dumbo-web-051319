class Student < ApplicationRecord
  has_many :student_labs
  has_many :labs, through: :student_labs

  def updog
    name.upcase
  end

end
