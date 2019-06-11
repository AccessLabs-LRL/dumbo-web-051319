class Student < ApplicationRecord
  has_many :labs

  def updog
    name.upcase
  end
  
end
