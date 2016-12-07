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

ActiveRecord::Schema.define(version: 20161205204453) do

  create_table "festivals", force: :cascade do |t|
    t.string   "name"
    t.date     "date"
    t.boolean  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "missions", force: :cascade do |t|
    t.string   "name"
    t.integer  "nombre_jour"
    t.integer  "nbr_ideal_benevole"
    t.integer  "duree_shift"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "personnes", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "birthdate"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rapports", force: :cascade do |t|
    t.text     "comment"
    t.boolean  "blacklist"
    t.integer  "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shifts", force: :cascade do |t|
    t.datetime "date_debut"
    t.text     "quels_jours"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
