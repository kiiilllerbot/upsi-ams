json.extract! payment, :id, :user_id, :matric_id, :amount, :description, :student_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
