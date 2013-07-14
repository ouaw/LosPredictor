# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20130714064234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hospitalizations", force: true do |t|
    t.datetime "adm_date"
    t.integer  "current_days"
    t.integer  "current_est_los"
    t.datetime "current_est_dsc_date"
    t.integer  "est_los_at_admission"
    t.datetime "est_dsc_date_at_admission"
    t.datetime "physician_est_dsc_date"
    t.integer  "age_at_admission"
    t.string   "age_group_at_admission"
    t.string   "mr_dx_at_admission"
    t.string   "mr_dx_at_admission_group"
    t.string   "admitting_program"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "phn"
    t.string   "firstname"
    t.string   "lastname"
    t.datetime "dob"
    t.string   "currentaddr"
    t.string   "currenttel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "tel"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
