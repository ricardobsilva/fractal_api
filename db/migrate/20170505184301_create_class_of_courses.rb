class CreateClassOfCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :class_of_courses do |t|
      t.string :name
      t.integer :shift_lesson

      t.timestamps
    end
  end
end
