# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:encounter.rb
# Description: stores one individual encounter (a list of encounter creatures with a name and description)
# Last modified on: 12/13/16
class Encounter < ApplicationRecord
  has_many :encounter_creatures
  validates_presence_of :name
end
