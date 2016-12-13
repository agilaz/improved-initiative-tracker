# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:encounters_controller.rb
# Description:handles the views for loading and creating new encounters
# Last modified on: 12/13/16
class EncountersController < ApplicationController
  def index
  end

  def new
    @encounter = Encounter.new
    session[:previous_url] = request.referer
  end

  def create
    user = User.find(session[:user_id])
    @encounter = Encounter.new(encounter_params)
    if user.encounters << @encounter
      session[:encounter_id] = @encounter.id
      redirect_to(main_index_path)
    else
      render('new')
    end
  end

  def delete
    @encounter = Encounter.find(params[:id])
    session[:encounter_id] = @encounter.id
  end

  def destroy
    Encounter.find(params[:id]).destroy
    session[:encounter_id] = nil
    redirect_to(encounters_path)
  end

  def encounter_params
    params.require(:encounter).permit(:name, :description)
  end

  def load_encounter
    session[:encounter_id] = params[:id]
    redirect_to(main_index_path)
  end

  private
  def validate_ownership
    if session[:user_id]

    end
  end
end
