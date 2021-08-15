json.extract! patient, :id, :name, :birth_date, :email, :phone, :created_at, :updated_at
json.url patient_url(patient, format: :json)
