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

ActiveRecord::Schema.define(version: 2019_02_28_142802) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "parcel"
    t.string "massif"
    t.string "plantType"
    t.string "comment"
    t.string "creationDate"
    t.string "getter"
    t.string "family"
    t.string "existingNumber"
    t.string "newNumber"
    t.string "champ1"
    t.string "champ2"
    t.string "champ3"
    t.string "champ4"
    t.string "champ5"
    t.string "champ6"
    t.string "champ7"
    t.string "champ8"
    t.string "champ9"
    t.string "champ10"
  end

  create_table "positions", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.bigint "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_positions_on_plant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved", default: false, null: false
    t.boolean "admin", default: false
    t.index ["approved"], name: "index_users_on_approved"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "positions", "plants"
end
