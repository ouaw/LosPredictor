class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :phn
      t.string :firstname
      t.string :lastname
      t.datetime :dob
      t.string :currentaddr
      t.string :currenttel

      t.timestamps
    end
  end
end
