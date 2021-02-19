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

ActiveRecord::Schema.define(version: 2021_02_19_033107) do

  create_table "golfcourses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "phone"
    t.float "latitude"
    t.float "longitude"
    t.string "website"
    t.string "teetimes"
    t.integer "holes"
    t.integer "par"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "newrounds", force: :cascade do |t|
    t.integer "golfcourse_id", null: false
    t.integer "user_id", null: false
    t.integer "score"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["golfcourse_id"], name: "index_newrounds_on_golfcourse_id"
    t.index ["user_id"], name: "index_newrounds_on_user_id"
  end

  create_table "teeboxes", force: :cascade do |t|
    t.integer "golfcourse_id", null: false
    t.string "color"
    t.integer "distance"
    t.integer "slope"
    t.float "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["golfcourse_id"], name: "index_teeboxes_on_golfcourse_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "newrounds", "golfcourses"
  add_foreign_key "newrounds", "users"
  add_foreign_key "teeboxes", "golfcourses"
end
