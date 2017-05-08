class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birthdate
      t.string :registration_number

      t.timestamps
    end
  end
end
