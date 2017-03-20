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

ActiveRecord::Schema.define(version: 20170320014452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.integer  "restaurant_id", null: false
    t.integer  "review_id"
    t.string   "url",           null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id",       null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.string   "address",     null: false
    t.string   "price",       null: false
    t.float    "lat",         null: false
    t.float    "long",        null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "city_params"
    t.string   "phone"
    t.string   "mon"
    t.string   "tue"
    t.string   "wed"
    t.string   "thur"
    t.string   "fri"
    t.string   "sat"
    t.string   "sun"
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "headline",      null: false
    t.string   "body",          null: false
    t.integer  "restaurant_id", null: false
    t.integer  "user_id",       null: false
    t.integer  "rating",        null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "session_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["username"], name: "index_users_on_username", using: :btree
  end

end
