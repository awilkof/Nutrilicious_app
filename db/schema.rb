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

ActiveRecord::Schema.define(version: 20160625193609) do

  create_table "foods", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.integer  "calories"
    t.integer  "serving_size"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "unit_of_m"
  end

  create_table "nutrient_types", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "nutrients", force: :cascade do |t|
    t.integer  "food_id"
    t.integer  "nutrient_type_id"
    t.integer  "amount"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "nutrients", ["food_id"], name: "index_nutrients_on_food_id"
  add_index "nutrients", ["nutrient_type_id"], name: "index_nutrients_on_nutrient_type_id"

end
