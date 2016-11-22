# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:statuses_controller.rb
# Description:handles the views for a status
# Last modified on: 11/22/16
class StatusesController < ApplicationController
  def show
    @status = Status.find(params[:id])
  end

  def new
    @status = Status.new
  end

  def create
    if params[:creature_ids] != nil
    params[:creature_ids].each do |id|
      @status = Status.new(status_params)
      unless EncounterCreature.find(id).add_status(@status)
        render('new')
        return
      end
    end
    end
    redirect_to(root_path)

  end

  def edit
    @status = Status.find(params[:id])
  end

  def update
    @status = Status.find(params[:id])
  end

  def delete
    @status = Status.find(params[:id])
  end

  def destroy
    @status = Status.find(params[:id])
    EncounterCreature.find(@status.encounter_creature_id).remove_status(@status)
    redirect_to(root_path)
  end

  def status_params
    params.require(:status).permit(:name, :duration, :repeat_save, :description, :save_type, :save_DC, :str_change, :dex_change, :con_change, :int_change, :wis_change, :cha_change)
  end
end
