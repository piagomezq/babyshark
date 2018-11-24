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

ActiveRecord::Schema.define(version: 20181124091736) do

  create_table "aid_requests", force: :cascade do |t|
    t.text    "description"
    t.integer "specialty_id"
    t.integer "patient_id"
  end

  add_index "aid_requests", ["patient_id"], name: "index_aid_requests_on_patient_id"
  add_index "aid_requests", ["specialty_id"], name: "index_aid_requests_on_specialty_id"

  create_table "organizations", force: :cascade do |t|
    t.string "name"
  end

  create_table "patient_sessions", force: :cascade do |t|
    t.integer "aid_request_id"
    t.integer "patient_id"
  end

  add_index "patient_sessions", ["aid_request_id"], name: "index_patient_sessions_on_aid_request_id"
  add_index "patient_sessions", ["patient_id"], name: "index_patient_sessions_on_patient_id"

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "rut"
    t.string "address"
    t.string "phone"
  end

  create_table "professionals", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "specialty_id"
    t.integer "organization_id"
  end

  add_index "professionals", ["organization_id"], name: "index_professionals_on_organization_id"
  add_index "professionals", ["specialty_id"], name: "index_professionals_on_specialty_id"

  create_table "specialties", force: :cascade do |t|
    t.string "name"
  end

end
