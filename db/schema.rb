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

ActiveRecord::Schema.define(version: 2020_01_30_222155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "notes", force: :cascade do |t|
    t.string "title"
    t.string "text_content"
    t.string "create_date"
    t.string "update_date"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notes_on_user_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.boolean "reddit"
    t.boolean "news"
    t.boolean "stocks"
    t.boolean "weather"
    t.boolean "spotify"
    t.boolean "calender"
    t.boolean "twitter"
    t.boolean "sleepCycle"
    t.boolean "notes"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_preferences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.string "photo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "notes", "users"
  add_foreign_key "preferences", "users"
end
