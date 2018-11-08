class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.references :department, foreign_key: true
      t.references :type, foreign_key: true
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :phone_number
      t.string :home_address
      t.string :work_email

      t.timestamps
    end
  end
end
