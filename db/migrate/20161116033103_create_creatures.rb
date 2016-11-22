# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161116033103_create_creatures.rb
# Description:adds the initial structure for a creature in the database
# Last modified on: 11/22/16
class CreateCreatures  < ActiveRecord::Migration[5.0]
  def up
    create_table :creatures do |t|
      t.string "name"
      t.string "description"
      t.integer "armorClass", :default => 0
      t.integer "combatManeuverDefense", :default => 0
      t.integer "maxHitPoints", :default => 0
      t.integer "strength", :default => 10
      t.integer "dexterity", :default => 10
      t.integer "constitution", :default => 10
      t.integer "intelligence", :default => 10
      t.integer "wisdom", :default => 10
      t.integer "charisma", :default => 10
      t.integer "fortitude", :default => 0
      t.integer "reflex", :default => 0
      t.integer "will", :default => 0
      t.integer "initiative", :default => 0

      t.timestamps
    end
  end

  def down
    drop_table :creatures
  end
end