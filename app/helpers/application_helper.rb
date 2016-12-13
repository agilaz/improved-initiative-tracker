# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:application_helper.rb
# Description: helper functions used throughout the project
# Last modified on: 12/13/16
module ApplicationHelper
  def show_errors(object)
    render(:partial => 'main/errors', :locals => {:object => object})
  end

  def make_list
    if Encounter.exists?(session[:encounter_id])
      encounter = Encounter.find(session[:encounter_id])
      creatures = encounter.encounter_creatures.initiative_order.to_a
      creatures.each do |c|
        if c.is_first
          until creatures.first == c
            creatures = creatures.rotate
          end
          return creatures
        end
      end
    else
      return []
    end
  end

  def cycle_list
    creatures = make_list
    creatures.first.update_attributes({:is_first => false})
    creatures.first.next_turn
    creatures = creatures.rotate
    creatures.first.update_attributes({:is_first => true})
    redirect_to :back
  end
end
