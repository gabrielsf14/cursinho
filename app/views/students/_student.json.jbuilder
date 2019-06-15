json.extract! student, :id, :name, :registration, :cpf, :date_of_birth, :lesson_id, :created_at, :updated_at
json.url student_url(student, format: :json)
