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

ActiveRecord::Schema.define(version: 20150828012132) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "allergens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
  end

  create_table "item_orders", force: :cascade do |t|
    t.integer  "food_item_id"
    t.integer  "party_id"
    t.boolean  "complete",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "parties", force: :cascade do |t|
    t.boolean  "is_paid?"
    t.integer  "table_num"
    t.integer  "num_of_guests"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "bill_subt",     default: 0.0
  end

end
