# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:application_controller.rb
# Description:main application controller
# Last modified on: 11/22/16
class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
end
