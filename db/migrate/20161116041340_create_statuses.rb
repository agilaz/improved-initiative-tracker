# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161116041340_create_statuses.rb
# Description:adds the initial structure for a status in the database
# Last modified on: 11/22/16
class CreateStatuses < ActiveRecord::Migration[5.0]
  def up
    create_table :statuses do |t|
      t.string "name"
      t.string "description"
      t.integer "duration"
      t.boolean "repeatSave"
      t.string "saveType"
      t.integer "saveDC"
      t.integer "strChange", :default => 0
      t.integer "dexChange", :default => 0
      t.integer "conChange", :default => 0
      t.integer "intChange", :default => 0
      t.integer "wisChange", :default => 0
      t.integer "chaChange", :default => 0
      t.integer "encounter_creature_id"
      t.timestamps
    end
    add_index("statuses", "encounter_creature_id")
  end

  def down
    drop_table :statuses
  end
end
