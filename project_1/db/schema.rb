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

ActiveRecord::Schema.define(version: 2019_04_11_153745) do

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.text "bio"
    t.string "email"
    t.string "geofence"
    t.string "location"
    t.float "longitude"
    t.float "latitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "g_username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "location"
    t.boolean "privacy"
    t.boolean "resolve"
    t.datetime "date"
    t.string "title"
    t.text "description"
    t.boolean "dumped"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "super_admins", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.float "latitude"
    t.float "longitude"
    t.string "username"
    t.text "bio"
    t.integer "post_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_super_admins_on_post_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.text "bio"
    t.float "latitude"
    t.float "longitude"
    t.string "location"
    t.boolean "suspended"
    t.boolean "blacklisted"
    t.boolean "blocked"
    t.integer "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_users_on_post_id"
  end

end
