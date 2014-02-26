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

ActiveRecord::Schema.define(version: 20140226135658) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "beacon_notes", primary_key: "beaconNote_id", force: true do |t|
    t.integer "beacon_id"
    t.integer "note_id"
  end

  add_index "beacon_notes", ["beaconNote_id"], name: "sqlite_autoindex_beacon_notes_1", unique: true

  create_table "beacons", force: true do |t|
    t.string   "uid"
    t.string   "title"
    t.string   "image"
    t.string   "thumbImage"
    t.text     "beaconDesc"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
    t.integer  "parentBeacon_id"
  end

  create_table "brands", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "colorMajor"
    t.string   "colorMinor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expressions", force: true do |t|
    t.string   "endptType"
    t.string   "endptValue"
    t.string   "expTitle"
    t.string   "expDesc"
    t.string   "expLink"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
  end

  create_table "feedbacks", force: true do |t|
    t.string   "question"
    t.string   "op1"
    t.string   "op2"
    t.string   "op3"
    t.string   "op4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "brand_id"
  end

  create_table "notes", force: true do |t|
    t.string   "title"
    t.text     "noteDesc"
    t.string   "image"
    t.string   "thumbImage"
    t.integer  "noteType"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
