class CreateAccessCards < ActiveRecord::Migration[5.0]
  def change
    create_table :access_cards do |t|
      t.string :registration_number
      t.datetime :emission_date

      t.timestamps
    end
  end
end
