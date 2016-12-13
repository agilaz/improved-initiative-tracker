# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161213183739_create_encounters.rb
# Description:adds encounters, which maintain lists of encounter_creature
# Last modified on: 12/13/16
class CreateEncounters < ActiveRecord::Migration[5.0]
  def change
    create_table :encounters do |t|
      t.string "name"
      t.string "description"
      t.timestamps
    end
    add_column(:creatures,:encounter_id,:integer)
    add_index(:creatures, :encounter_id)
  end
end
