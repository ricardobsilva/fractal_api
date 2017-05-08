class CreateClassStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :class_students do |t|
      t.integer :class_of_course_id
      t.integer :student_id

      t.timestamps
    end
    add_index :class_students, :class_of_course_id
    add_index :class_students, :student_id
  end
end
