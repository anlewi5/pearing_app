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

ActiveRecord::Schema.define(version: 20171029192514) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "offers", force: :cascade do |t|
    t.integer "status"
    t.bigint "user_id"
    t.bigint "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_offers_on_request_id"
    t.index ["user_id"], name: "index_offers_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.string "title"
    t.date "day"
    t.time "start_time"
    t.integer "duration"
    t.string "location"
    t.text "description"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "requests_and_tags", id: false, force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "tag_id"
    t.index ["request_id"], name: "index_requests_and_tags_on_request_id"
    t.index ["tag_id"], name: "index_requests_and_tags_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.string "slack_handle"
    t.integer "cohort"
    t.integer "role", default: 0
  end

  add_foreign_key "offers", "requests"
  add_foreign_key "offers", "users"
  add_foreign_key "requests", "users"
end
