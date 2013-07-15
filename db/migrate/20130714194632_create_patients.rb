class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :personal_health_number
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :current_address
      t.string :current_telephone

      t.timestamps
    end
  end
end
