class CreateHospitalizations < ActiveRecord::Migration
  def change
    create_table :hospitalizations do |t|
      t.datetime :adm_date
      t.integer :current_days
      t.integer :current_est_los
      t.datetime :current_est_dsc_date
      t.integer :est_los_at_admission
      t.datetime :est_dsc_date_at_admission
      t.datetime :physician_est_dsc_date
      t.integer :age_at_admission
      t.string :age_group_at_admission
      t.string :mr_dx_at_admission
      t.string :mr_dx_at_admission_group
      t.string :admitting_program

      t.timestamps
    end
  end
end
