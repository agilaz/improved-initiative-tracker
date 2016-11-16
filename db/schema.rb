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

ActiveRecord::Schema.define(version: 20161116041340) do

  create_table "creatures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "armorClass",            default: 0
    t.integer  "combatManeuverDefense", default: 0
    t.integer  "maxHitPoints",          default: 0
    t.integer  "strength",              default: 10
    t.integer  "dexterity",             default: 10
    t.integer  "constitution",          default: 10
    t.integer  "intelligence",          default: 10
    t.integer  "wisdom",                default: 10
    t.integer  "charisma",              default: 10
    t.integer  "fortitude",             default: 0
    t.integer  "reflex",                default: 0
    t.integer  "will",                  default: 0
    t.integer  "initiative",            default: 0
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "duration"
    t.boolean  "repeatSave"
    t.string   "saveType"
    t.integer  "saveDC"
    t.integer  "strChange",   default: 0
    t.integer  "dexChange",   default: 0
    t.integer  "conChange",   default: 0
    t.integer  "intChange",   default: 0
    t.integer  "wisChange",   default: 0
    t.integer  "chaChange",   default: 0
    t.integer  "creature_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["creature_id"], name: "index_statuses_on_creature_id", using: :btree
  end

end
