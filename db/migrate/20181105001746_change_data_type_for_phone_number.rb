class ChangeDataTypeForPhoneNumber < ActiveRecord::Migration[5.0]
  def change
    change_column :employees, :phone_number, :bigint
  end
end
