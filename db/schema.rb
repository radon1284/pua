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

ActiveRecord::Schema.define(version: 20161113044255) do

  create_table "accounts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "mobile"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_dbs", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "telephone"
    t.string   "mobile"
    t.string   "subscription_plan"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "job_orders", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_location"
    t.string   "type_of_plan"
    t.string   "status"
    t.string   "job_order_no"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "port_hub_maps", force: :cascade do |t|
    t.decimal  "no_of_port"
    t.decimal  "no_of_available_port"
    t.string   "location"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.float    "latitude"
    t.float    "longitude"
  end

end
