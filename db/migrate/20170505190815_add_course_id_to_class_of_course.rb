class AddCourseIdToClassOfCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :class_of_courses, :course_id, :integer
    add_index :class_of_courses, :course_id
  end
end
