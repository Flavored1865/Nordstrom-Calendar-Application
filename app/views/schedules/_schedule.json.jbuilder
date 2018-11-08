json.extract! schedule, :id, :employee_id, :scheduled_day, :hours, :start_time, :end_time, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)
