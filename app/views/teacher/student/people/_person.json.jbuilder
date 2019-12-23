json.extract! person, :id, :person_name, :code, :sex, :born, :address, :telephone, :created_at, :updated_at
json.url person_url(person, format: :json)
