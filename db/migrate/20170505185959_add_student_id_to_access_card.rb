class AddStudentIdToAccessCard < ActiveRecord::Migration[5.0]
  def change
    add_column :access_cards, :student_id, :integer
    add_index :access_cards, :student_id
  end
end
