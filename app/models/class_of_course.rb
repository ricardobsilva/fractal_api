class ClassOfCourse < ApplicationRecord
  belongs_to :course
  has_many :class_students
  has_many :students, through: :class_students
end
