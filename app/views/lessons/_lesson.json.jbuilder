json.extract! lesson, :id, :lesson_name, :start, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
