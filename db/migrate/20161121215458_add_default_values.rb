# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161121215458_add_default_values.rb
# Description:adds defaults for columns which did not have any previously
# Last modified on: 11/22/16
class AddDefaultValues < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:statuses, :duration, 1)
    change_column_default(:statuses, :save_type, 'Fort')
    change_column_default(:statuses, :save_DC, 0)
  end
end
