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

ActiveRecord::Schema.define(version: 20160925205729) do

  create_table "appointments", force: :cascade do |t|
    t.integer  "dentist_id"
    t.integer  "patient_id"
    t.date     "date"
    t.time     "begin"
    t.time     "end"
    t.string   "annotation_title"
    t.string   "annotation"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "dentists", force: :cascade do |t|
    t.string   "name"
    t.string   "avatar"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.date     "born"
    t.string   "avatar"
    t.string   "annotation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "paychecks", force: :cascade do |t|
    t.integer  "appointment_id"
    t.float    "value"
    t.boolean  "is_payed"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
