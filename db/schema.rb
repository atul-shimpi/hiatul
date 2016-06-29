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

ActiveRecord::Schema.define(version: 20150717073453) do

  create_table "addresses", force: true do |t|
    t.integer  "type_of_address"
    t.text     "address"
    t.integer  "state_id"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "country_id"
  end

  create_table "birth_dates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.datetime "birth_date"
  end

  create_table "candiate_statuses", force: true do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.string   "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.integer "user_id"
    t.integer "contact_type"
    t.string  "value"
  end

  create_table "genders", force: true do |t|
    t.integer  "user_id"
    t.string   "genders_master_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genders_master", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", force: true do |t|
    t.string  "sender"
    t.string  "bcc"
    t.string  "cc"
    t.string  "subject"
    t.string  "body"
    t.string  "signature"
    t.integer "expiry"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",                          null: false
    t.string   "middle_name",            default: "", null: false
    t.string   "last_name",                           null: false
    t.integer  "role_id",                default: 3,  null: false
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
