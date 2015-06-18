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

ActiveRecord::Schema.define(version: 20150616162252) do

  create_table "animal_classes", force: :cascade do |t|
    t.string   "name"
    t.integer  "animal_division_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "animal_classes", ["animal_division_id"], name: "index_animal_classes_on_animal_division_id"

  create_table "animal_divisions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animal_species", force: :cascade do |t|
    t.string   "name"
    t.integer  "animal_class_id"
    t.integer  "animal_subclass_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "animal_species", ["animal_class_id"], name: "index_animal_species_on_animal_class_id"
  add_index "animal_species", ["animal_subclass_id"], name: "index_animal_species_on_animal_subclass_id"

  create_table "animal_subclasses", force: :cascade do |t|
    t.string   "name"
    t.integer  "animal_class_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "animal_subclasses", ["animal_class_id"], name: "index_animal_subclasses_on_animal_class_id"

end
