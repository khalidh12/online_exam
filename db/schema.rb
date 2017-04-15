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

ActiveRecord::Schema.define(version: 20170415210731) do

  create_table "cets", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "state",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "comptests", force: :cascade do |t|
    t.string   "subject",    limit: 255
    t.string   "cet",        limit: 255
    t.string   "comp",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "tc",         limit: 255
    t.string   "key",        limit: 255
  end

  create_table "eamcets", force: :cascade do |t|
    t.string   "subject",    limit: 255
    t.text     "question",   limit: 65535
    t.string   "a",          limit: 255
    t.string   "b",          limit: 255
    t.string   "c",          limit: 255
    t.string   "d",          limit: 255
    t.string   "t",          limit: 255
    t.string   "tc",         limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "cet",        limit: 255
  end

  create_table "ecets", force: :cascade do |t|
    t.string   "subject",              limit: 255
    t.text     "question",             limit: 65535
    t.string   "a",                    limit: 255
    t.string   "b",                    limit: 255
    t.string   "c",                    limit: 255
    t.string   "d",                    limit: 255
    t.string   "t",                    limit: 255
    t.string   "tc",                   limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "cet",                  limit: 255
    t.string   "comman",               limit: 255
    t.string   "qimage",               limit: 255
    t.string   "optiona",              limit: 255
    t.string   "optionb",              limit: 255
    t.string   "optionc",              limit: 255
    t.string   "optiond",              limit: 255
    t.string   "optiont",              limit: 255
    t.string   "optiona_file_name",    limit: 255
    t.string   "optiona_content_type", limit: 255
    t.integer  "optiona_file_size",    limit: 4
    t.datetime "optiona_updated_at"
    t.string   "optionb_file_name",    limit: 255
    t.string   "optionb_content_type", limit: 255
    t.integer  "optionb_file_size",    limit: 4
    t.datetime "optionb_updated_at"
    t.string   "optionc_file_name",    limit: 255
    t.string   "optionc_content_type", limit: 255
    t.integer  "optionc_file_size",    limit: 4
    t.datetime "optionc_updated_at"
    t.string   "optiond_file_name",    limit: 255
    t.string   "optiond_content_type", limit: 255
    t.integer  "optiond_file_size",    limit: 4
    t.datetime "optiond_updated_at"
  end

  create_table "examstates", force: :cascade do |t|
    t.string   "cet",        limit: 255
    t.string   "group",      limit: 255
    t.string   "tc",         limit: 255
    t.string   "status",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "eamcet",     limit: 255
    t.string   "icet",       limit: 255
    t.string   "pgcet",      limit: 255
    t.string   "edcet",      limit: 255
    t.string   "diploma",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "submitques", force: :cascade do |t|
    t.integer  "userid",     limit: 4
    t.string   "question",   limit: 255
    t.string   "answer",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "tc",         limit: 255
    t.integer  "pag",        limit: 4
    t.string   "peg",        limit: 255
    t.string   "subject",    limit: 255
  end

  create_table "testcounts", force: :cascade do |t|
    t.integer  "testcount",    limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "userid",       limit: 255
    t.string   "tc",           limit: 255
    t.string   "subject",      limit: 255
    t.string   "cet",          limit: 255
    t.string   "shortsubject", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "mobile",                 limit: 255
    t.string   "district",               limit: 255
    t.string   "firstname",              limit: 255
    t.string   "lastname",               limit: 255
    t.string   "role",                   limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.string   "state",                  limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
