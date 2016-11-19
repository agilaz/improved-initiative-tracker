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

ActiveRecord::Schema.define(version: 20161119031026) do

  create_table "creatures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "armor_class",             default: 0
    t.integer  "combat_maneuver_defense", default: 0
    t.integer  "max_hit_points",          default: 0
    t.integer  "strength",                default: 10
    t.integer  "dexterity",               default: 10
    t.integer  "constitution",            default: 10
    t.integer  "intelligence",            default: 10
    t.integer  "wisdom",                  default: 10
    t.integer  "charisma",                default: 10
    t.integer  "fortitude",               default: 0
    t.integer  "reflex",                  default: 0
    t.integer  "will",                    default: 0
    t.integer  "initiative",              default: 0
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "type"
    t.boolean  "is_first"
  end

  create_table "statuses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "duration"
    t.boolean  "repeat_save"
    t.string   "save_type"
    t.integer  "save_DC"
    t.integer  "str_change",            default: 0
    t.integer  "dex_change",            default: 0
    t.integer  "con_change",            default: 0
    t.integer  "int_change",            default: 0
    t.integer  "wis_change",            default: 0
    t.integer  "cha_change",            default: 0
    t.integer  "encounter_creature_id"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["encounter_creature_id"], name: "index_statuses_on_encounter_creature_id", using: :btree
  end

end
