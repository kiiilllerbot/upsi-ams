json.extract! meeting, :id, :user_id, :time_and_date, :description, :matric_id, :student_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
