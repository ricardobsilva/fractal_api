class RenameRegistrationNumberColumnToEmail < ActiveRecord::Migration[5.0]
  def change
    rename_column :students, :registration_number, :email
  end
end
