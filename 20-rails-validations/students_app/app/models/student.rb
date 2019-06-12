class Student < ApplicationRecord
  has_many :student_labs
  has_many :labs, through: :student_labs

  validates :name, presence: true, uniqueness: true
  # validates :name, uniqueness: true
  validates :age, numericality: { only_integer: true, greater_than: 0 }

  validates :favorite_food, presence: true
  validate :thou_shalt_not_be_called_eric

  def updog
    name.upcase
  end

  def thou_shalt_not_be_called_eric
    if self.name && self.name.downcase == "eric"
      self.errors.add(:name, "shall not be called Eric")
    end
  end

end
