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

ActiveRecord::Schema.define(version: 20191114155931) do

  create_table "hows", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hows_usecases", id: false, force: :cascade do |t|
    t.integer "how_id"
    t.integer "usecase_id"
    t.index ["how_id"], name: "index_hows_usecases_on_how_id"
    t.index ["usecase_id"], name: "index_hows_usecases_on_usecase_id"
  end

  create_table "rests", force: :cascade do |t|
    t.string "app"
    t.string "role"
    t.string "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usecases", force: :cascade do |t|
    t.string "what"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rest_id"
  end

end
