json.array!(@hospitalizations) do |hospitalization|
  json.extract! hospitalization, :admission_date, :current_days, :current_estimated_los, :current_estimated_discharge_date, :estimated_los_at_admission, :estimated_discharge_date_at_admission, :physician_estimate_discharge_date, :age_at_admission, :age_group_at_admission, :most_responsible_diagnosis_at_admission, :most_responsible_diagnosis_group_at_admission, :admitting_program, :patient_id
  json.url hospitalization_url(hospitalization, format: :json)
end
