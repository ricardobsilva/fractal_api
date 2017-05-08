class ClassStudent < ApplicationRecord
  belongs_to :student
  belongs_to :class_of_course
end
