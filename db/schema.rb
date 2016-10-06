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

ActiveRecord::Schema.define(version: 20160929061136) do

  create_table "articles", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.string   "picture"
    t.string   "drawing"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "operator_id"
    t.datetime "started_at"
    t.datetime "completed_at"
    t.integer  "metalwork_id"
    t.integer  "order_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "metalworks", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.integer  "machine_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "operators", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date_ric"
    t.datetime "date_cons"
    t.text     "note"
    t.integer  "article_id"
    t.integer  "customer_id"
    t.float    "price"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "total_pieces"
  end

  create_table "tasks", force: :cascade do |t|
    t.integer  "operator_id"
    t.integer  "metalwork_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.float    "speed"
    t.boolean  "done"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.datetime "date_start"
    t.integer  "priority"
  end

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.integer  "machine_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
