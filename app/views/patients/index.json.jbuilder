json.array!(@patients) do |patient|
  json.extract! patient, :personal_health_number, :first_name, :last_name, :date_of_birth, :current_address, :current_telephone
  json.url patient_url(patient, format: :json)
end
