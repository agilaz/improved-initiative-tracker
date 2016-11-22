# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161116190024_add_encounter_creature.rb
# Description:adds the type attribute to the creatures table (for EncounterCreatures)
# Last modified on: 11/22/16
class AddEncounterCreature < ActiveRecord::Migration[5.0]
  def change
    add_column(:creatures,:type,:string)
  end
end
