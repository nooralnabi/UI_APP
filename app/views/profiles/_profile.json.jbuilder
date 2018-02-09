json.extract! profile, :id, :name, :status, :gender, :website, :person_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
