# Entire file was added for the final exam

# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:user.rb
# Description: stores one user, who owns and controls multiple encounters
# Last modified on: 12/13/16
class User < ApplicationRecord
  has_secure_password
  has_many :encounters

  validates_presence_of :password
  validates_confirmation_of :password

  validates_presence_of :username
  validates_uniqueness_of :username
end
