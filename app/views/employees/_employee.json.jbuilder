json.extract! employee, :id, :department_id, :type_id, :first_name, :middle_name, :last_name, :phone_number, :home_address, :work_email, :created_at, :updated_at
json.url employee_url(employee, format: :json)
