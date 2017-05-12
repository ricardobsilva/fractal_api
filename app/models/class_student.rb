class ClassStudent < ApplicationRecord
  belongs_to :student, required: false
  belongs_to :class_of_course, required: false

  validates :student_id, :class_of_course_id, presence: true
end
