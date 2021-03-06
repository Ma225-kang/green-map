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

ActiveRecord::Schema.define(version: 2019_12_10_133910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "congratulations", force: :cascade do |t|
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_congratulations_on_place_id"
  end

  create_table "missions", force: :cascade do |t|
    t.date "date"
    t.string "time_slot"
    t.string "mapmaster_photo"
    t.bigint "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "captaingreen_id"
    t.string "participation_proof"
    t.integer "volume_left"
    t.integer "mission_points"
    t.integer "perceived_effort"
    t.string "status", default: "planned"
    t.index ["captaingreen_id"], name: "index_missions_on_captaingreen_id"
    t.index ["place_id"], name: "index_missions_on_place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "display_photo"
    t.string "mapmaster_photo"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "status"
    t.integer "volume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "mapmaster_id"
    t.string "trashes_on_site", default: [], array: true
    t.index ["mapmaster_id"], name: "index_places_on_mapmaster_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.string "level"
    t.string "avatar"
    t.string "city"
    t.string "zip_code"
    t.string "country"
    t.integer "points", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "congratulations", "places"
  add_foreign_key "missions", "places"
  add_foreign_key "missions", "users", column: "captaingreen_id"
  add_foreign_key "places", "users", column: "mapmaster_id"
end
