# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161117202119_add_first_tracking.rb
# Description:adds the is_first flag for use in making the main table
# Last modified on: 11/22/16
class AddFirstTracking < ActiveRecord::Migration[5.0]
  def change
    add_column(:creatures,:is_first,:boolean)
  end
end
