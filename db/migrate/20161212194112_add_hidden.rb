# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161212194112_add_hidden.rb
# Description:adds is_hidden column so GM can control what players see (default: hidden)
# Last modified on: 12/12/16
class AddHidden < ActiveRecord::Migration[5.0]
  def change
    add_column(:creatures,:is_hidden,:boolean, {:default => true})
  end
end
