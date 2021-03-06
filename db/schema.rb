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

ActiveRecord::Schema.define(version: 2021_06_08_155623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hangouts", force: :cascade do |t|
    t.string "title"
    t.string "date"
    t.string "category"
    t.text "description"
    t.string "city"
    t.string "venue"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_hangouts_on_user_id"
  end

  create_table "rsvps", force: :cascade do |t|
    t.bigint "hangout_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hangout_id"], name: "index_rsvps_on_hangout_id"
    t.index ["user_id"], name: "index_rsvps_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "user_photo"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hangouts", "users"
  add_foreign_key "rsvps", "hangouts"
  add_foreign_key "rsvps", "users"
end
