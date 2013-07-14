json.array!(@patients) do |patient|
  json.extract! patient, :phn, :firstname, :lastname, :dob, :currentaddr, :currenttel
  json.url patient_url(patient, format: :json)
end
