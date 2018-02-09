json.extract! person, :id, :name, :email, :phone_number, :date_of_brith, :active, :created_at, :updated_at
json.url person_url(person, format: :json)
