class AddEmployeeIdToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :employee, foreign_key: true
  end
end
