# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:encounter_creatures_controller.rb
# Description:handles the views for creatures currently in the encounter
# Last modified on: 12/13/16
class EncounterCreaturesController < ApplicationController

  def show
    @creature = EncounterCreature.find(params[:id])
  end

  #player_show function added for the final exam
  def player_show
    @creature = EncounterCreature.find(params[:id])
  end

  def new
    @creature = EncounterCreature.new
    @all_creatures = Creature.base_only.alphabetical
  end

  def create
    #Add creatures to the given encounter
    encounter = Encounter.find(session[:encounter_id]) #Line added for the final exam
    #Find the next number to use for the names
    number = high_num + 1
    #Loop through the number of creatures requested, adding each and incrementing the number next to their names
    params[:quantity].to_i.times do
      @creature = EncounterCreature.new(encounter_creature_params)
      @creature.copy(Creature.find(params[:base_id]))
      @creature.number = number
      number += 1
      #Auto-roll initiative if the box was checked; otherwise, initiative score from the form is used
      if params[:roll_init]
        @creature.roll_initiative
      end
      unless encounter.encounter_creatures << @creature #Line modified for the final exam
        render('new')
      end
    end
    redirect_to(root_path)
  end

  def edit
    @creature = EncounterCreature.find(params[:id])
  end

  def update
    @creature = EncounterCreature.find(params[:id])
  end

  def delete
    @creature = EncounterCreature.find(params[:id])
  end

  def destroy
    @creature = EncounterCreature.find(params[:id])
    if @creature.is_first?
      creatures = EncounterCreature.all.initiative_order.to_a
      index = (creatures.index(@creature) + 1) % creatures.size
      creatures[index].update_attributes({:is_first => true})
    end
    @creature.destroy
    redirect_to(root_path)
  end

  def encounter_creature_params
    params.require(:encounter_creature).permit(:initiative)
  end

  def high_num
    name = Creature.find(params[:base_id]).name
    creature = EncounterCreature.where(:name => name).where(:encounter_id => session[:encounter_id]).order("number DESC").first
    if creature != nil
      return creature.number
    else
      return 0
    end
  end
end
