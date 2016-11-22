# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161116221055_fix_name_formats.rb
# Description:fixes the creatures database to follow ruby naming conventions (snake_case)
# Last modified on: 11/22/16
class FixNameFormats < ActiveRecord::Migration[5.0]
  def change
    rename_column(:creatures, :armorClass, :armor_class)
    rename_column(:creatures, :combatManeuverDefense, :combat_maneuver_defense)
    rename_column(:creatures, :maxHitPoints, :max_hit_points)
  end
end
