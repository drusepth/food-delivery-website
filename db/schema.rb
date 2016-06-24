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

ActiveRecord::Schema.define(version: 20160624213129) do

  create_table "locations", force: :cascade do |t|
    t.string   "address"
    t.string   "town"
    t.string   "province"
    t.string   "postalcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "vendor_id"
    t.integer  "user_id"
  end

  create_table "menu_categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "menu_id"
  end

  create_table "menus", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.time     "enable_at"
    t.time     "disable_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "vendor_id"
    t.integer  "product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "submitted"
    t.datetime "scheduled_delivery"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "product_addons", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price_delta"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.decimal  "price"
    t.float    "people_fed"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "menu_category_id"
    t.integer  "menu_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "is_admin"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
    t.integer  "location_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.time     "open_at"
    t.time     "close_at"
    t.time     "delivery_start"
    t.time     "delivery_end"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.decimal  "delivery_cost"
    t.decimal  "delivery_minimum"
    t.string   "cuisine"
    t.string   "price_range"
    t.string   "image_url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "location_id"
    t.integer  "menu_id"
    t.string   "phone"
  end

end
