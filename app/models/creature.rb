# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename: creature.rb
# Description: Stores a creature in the database (all attributes but initiative and statuses)
# Last modified on: 11/22/16
class Creature < ApplicationRecord
  scope :alphabetical, lambda { order("name ASC") }
  scope :base_only, lambda { where(:type => nil) }
  validates_presence_of :name
  #todo add more validation
end
