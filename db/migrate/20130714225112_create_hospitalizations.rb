class CreateHospitalizations < ActiveRecord::Migration
  def change
    create_table :hospitalizations do |t|
      t.datetime :admission_date
      t.integer :current_days
      t.integer :current_estimated_los
      t.datetime :current_estimated_discharge_date
      t.integer :estimated_los_at_admission
      t.datetime :estimated_discharge_date_at_admission
      t.datetime :physician_estimate_discharge_date
      t.integer :age_at_admission
      t.string :age_group_at_admission
      t.string :most_responsible_diagnosis_at_admission
      t.string :most_responsible_diagnosis_group_at_admission
      t.string :admitting_program
      t.integer :patient_id

      t.timestamps
    end
  end
end
