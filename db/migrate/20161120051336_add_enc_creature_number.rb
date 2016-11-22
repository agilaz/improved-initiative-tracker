# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161120051336_add_enc_creature_number.rb
# Description:adds the number field to differentiate between encounter creatures with the same base
# Last modified on: 11/22/16
class AddEncCreatureNumber < ActiveRecord::Migration[5.0]
  def change
    add_column(:creatures,:number,:integer)
  end
end
