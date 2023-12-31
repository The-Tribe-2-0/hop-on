# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_08_171053) do
  create_table "houses", force: :cascade do |t|
    t.string "location"
    t.string "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "per_night"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "rating"
    t.string "content"
    t.integer "user_id", null: false
    t.integer "house_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_reviews_on_house_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "avatar"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visits", force: :cascade do |t|
    t.string "start_date"
    t.integer "house_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "end_date"
    t.index ["house_id"], name: "index_visits_on_house_id"
    t.index ["user_id"], name: "index_visits_on_user_id"
  end

  add_foreign_key "reviews", "houses"
  add_foreign_key "reviews", "users"
  add_foreign_key "visits", "houses"
  add_foreign_key "visits", "users"
end
