# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151031020117) do

  create_table "admin_users", force: :cascade do |t|
    t.string   "username",            limit: 255
    t.string   "password_digest",     limit: 255
    t.boolean  "adminstrator",        limit: 1
    t.string   "email",               limit: 255
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "avatar_file_name",    limit: 255
    t.string   "avatar_content_type", limit: 255
    t.integer  "avatar_file_size",    limit: 4
    t.datetime "avatar_updated_at"
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "events", force: :cascade do |t|
    t.string   "name",                limit: 255
    t.integer  "position",            limit: 4
    t.datetime "time"
    t.text     "details",             limit: 65535
    t.string   "place",               limit: 255
    t.string   "line2",               limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "image_file_name",     limit: 255
    t.string   "image_content_type",  limit: 255
    t.integer  "image_file_size",     limit: 4
    t.datetime "image_updated_at"
    t.string   "image2_file_name",    limit: 255
    t.string   "image2_content_type", limit: 255
    t.integer  "image2_file_size",    limit: 4
    t.datetime "image2_updated_at"
    t.string   "image3_file_name",    limit: 255
    t.string   "image3_content_type", limit: 255
    t.integer  "image3_file_size",    limit: 4
    t.datetime "image3_updated_at"
    t.string   "image4_file_name",    limit: 255
    t.string   "image4_content_type", limit: 255
    t.integer  "image4_file_size",    limit: 4
    t.datetime "image4_updated_at"
  end

  create_table "members", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.integer  "position",             limit: 4
    t.string   "job_title",            limit: 255
    t.string   "line2",                limit: 255
    t.text     "description",          limit: 65535
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "avatar_file_name",     limit: 255
    t.string   "avatar_content_type",  limit: 255
    t.integer  "avatar_file_size",     limit: 4
    t.datetime "avatar_updated_at"
    t.string   "avatar2_file_name",    limit: 255
    t.string   "avatar2_content_type", limit: 255
    t.integer  "avatar2_file_size",    limit: 4
    t.datetime "avatar2_updated_at"
  end

end
