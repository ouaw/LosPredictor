json.array!(@hospitalizations) do |hospitalization|
  json.extract! hospitalization, :adm_date, :current_days, :current_est_los, :current_est_dsc_date, :est_los_at_admission, :est_dsc_date_at_admission, :physician_est_dsc_date, :age_at_admission, :age_group_at_admission, :mr_dx_at_admission, :mr_dx_at_admission_group, :admitting_program
  json.url hospitalization_url(hospitalization, format: :json)
end
