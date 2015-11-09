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

ActiveRecord::Schema.define(version: 20151107031915) do

  create_table "comments", force: :cascade do |t|
    t.text     "comentario"
    t.integer  "puntuacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "Doctor_id"
  end

  add_index "comments", ["Doctor_id"], name: "index_comments_on_Doctor_id"

  create_table "doctors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "especialidad"
    t.integer  "telefono",     limit: 53
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "Location_id"
  end

  add_index "doctors", ["Location_id"], name: "index_doctors_on_Location_id"

  create_table "locations", force: :cascade do |t|
    t.float    "latitude",   limit: 53, null: false
    t.float    "longitude",  limit: 53, null: false
    t.string   "name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "prescriptions", force: :cascade do |t|
    t.string   "medicamento"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "Doctor_id"
    t.integer  "User_id"
  end

  add_index "prescriptions", ["Doctor_id"], name: "index_prescriptions_on_Doctor_id"
  add_index "prescriptions", ["User_id"], name: "index_prescriptions_on_User_id"

  create_table "users", force: :cascade do |t|
    t.string   "user"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
