# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:status.rb
# Description:stores all information about a status
# Last modified on: 11/22/16
class Status < ApplicationRecord
  belongs_to :encounter_creature
  validates_presence_of :name
end
