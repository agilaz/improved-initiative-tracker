# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:main_controller.rb
# Description:used for the main index page
# Last modified on: 12/13/16
class MainController < ApplicationController
  def index
    if Encounter.exists?(session[:encounter_id])
      encounter = Encounter.find(session[:encounter_id])
      unless session[:user_id] == encounter.user_id
        redirect_to(player_index_path)
      end
    end
  end

  def toggle_hidden
    creature = EncounterCreature.find(params[:id])
    creature.update_attribute(:is_hidden, !creature.is_hidden)
    redirect_to :back
  end
end
