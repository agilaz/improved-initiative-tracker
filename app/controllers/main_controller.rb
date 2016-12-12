# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:main_controller.rb
# Description:used for the main index page
# Last modified on: 12/12/16
class MainController < ApplicationController
  def index
  end

  def toggle_hidden
    creature = EncounterCreature.find(params[:id])
    creature.update_attribute(:is_hidden, !creature.is_hidden)
    redirect_to :back
  end
end
