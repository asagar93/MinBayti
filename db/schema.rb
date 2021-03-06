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

ActiveRecord::Schema.define(version: 20171126223446) do

  create_table "bussinesses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "imgs",        default: "--- []\n"
    t.string   "instalink"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "description"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "confirmed_orders", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "payment_method"
    t.string   "payment_status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "foods", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "bussiness_id"
    t.float    "price"
  end

  create_table "orderlines", force: :cascade do |t|
    t.integer  "food_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "payment_method"
    t.date     "date_created"
    t.date     "date_delivered"
    t.date     "date_paid"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.float    "total_cost"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "path"
    t.integer  "bussiness_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "bussiness_id"
    t.integer  "user_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.integer  "kind"
    t.integer  "points"
    t.integer  "nooforders"
    t.string   "email"
    t.date     "dob"
    t.string   "gender"
    t.integer  "phone"
    t.string   "address"
    t.integer  "tokens"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
