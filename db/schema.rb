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

ActiveRecord::Schema.define(version: 20141229203141) do

  create_table "circle_members", force: true do |t|
    t.string   "giverNickname"
    t.integer  "person_id"
    t.text     "personInterests"
    t.text     "giverNotes"
    t.boolean  "giftGiven?"
    t.text     "thankYou"
    t.integer  "giftCircle_id"
    t.integer  "gift_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "receiver_id"
  end

  create_table "gift_circles", force: true do |t|
    t.string   "name"
    t.text     "about"
    t.string   "theme"
    t.date     "giving_date"
    t.date     "reveal_date"
    t.float    "min_giftprice"
    t.float    "max_giftprice"
    t.boolean  "annon_admin?"
    t.boolean  "active?"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "occasion"
  end

  create_table "gifts", force: true do |t|
    t.string   "name"
    t.text     "about"
    t.string   "image"
    t.text     "giftcard"
    t.integer  "person_id"
    t.integer  "circleMember_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "about"
  end

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nickname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
