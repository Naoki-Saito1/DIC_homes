# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_09_27_113603) do

  create_table "homes", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.string "address"
    t.string "age"
    t.text "mark"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nstations", force: :cascade do |t|
    t.string "route"
    t.string "station"
    t.string "minonfoot"
    t.integer "home_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["home_id"], name: "index_nstations_on_home_id"
  end

  create_table "stationhomes", force: :cascade do |t|
    t.integer "home_id", null: false
    t.integer "nstation_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["home_id"], name: "index_stationhomes_on_home_id"
    t.index ["nstation_id"], name: "index_stationhomes_on_nstation_id"
  end

  add_foreign_key "nstations", "homes"
  add_foreign_key "stationhomes", "homes"
  add_foreign_key "stationhomes", "nstations"
end
