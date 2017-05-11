class Student < ApplicationRecord
  has_one :access_card
  has_many :class_students
  has_many :class_of_courses, through: :class_students

  validates :name, :birthdate, presence: true

  accepts_nested_attributes_for :access_card
end
