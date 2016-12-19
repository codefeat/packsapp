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

ActiveRecord::Schema.define(version: 20161219201339) do

  create_table "active_admin_comments", force: :cascade do |t|
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

  create_table "admin_users", force: :cascade do |t|
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

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "appointments", force: :cascade do |t|
    t.integer  "day_id"
    t.integer  "slot_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "delivery_id"
  end

  create_table "days", force: :cascade do |t|
    t.date     "date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "delivery_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "size"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "image"
    t.integer  "user_id"
    t.string   "user_packnum"
    t.integer  "order_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "order_packnum"
    t.string   "order_size"
    t.text     "order_description"
    t.integer  "order_qty"
    t.decimal  "amount"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "product_id"
    t.integer  "order_status_id",   default: 1
  end

  create_table "pickups", force: :cascade do |t|
    t.integer  "shopper_id"
    t.integer  "driver_id"
    t.string   "prod_size"
    t.string   "user_num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "prod_name"
    t.string   "description"
    t.decimal  "price"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "sku"
    t.decimal  "total_price"
  end

  create_table "purchases", force: :cascade do |t|
    t.string   "email"
    t.integer  "amount"
    t.string   "description"
    t.string   "currency"
    t.string   "customer_id"
    t.string   "card"
    t.integer  "product_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "uuid"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating"
    t.text     "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "delivery_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string   "role_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.date     "day"
    t.integer  "slot_id"
    t.integer  "delivery_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "window"
  end

  create_table "slots", force: :cascade do |t|
    t.string   "window"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "day_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",                    null: false
    t.string   "encrypted_password",     default: "",                    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,                     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                             null: false
    t.datetime "updated_at",                                             null: false
    t.boolean  "admin",                  default: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image",                  default: "default-profile.png"
    t.boolean  "shopper",                default: true
    t.boolean  "driver",                 default: false
    t.integer  "role_id",                default: 2
    t.string   "packs_num"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
