# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:routes.rb
# Description: used to handle http requests
# Last modified on: 12/13/16
Rails.application.routes.draw do

  root :to => 'main#index'

  get 'main/index'
  get 'player/index'
  post 'main/cycle_list'
  get 'main/toggle_hidden'
  post 'creatures/cycle_list'
  post 'encounter_creatures/cycle_list'
  post 'statuses/cycle_list'
  post 'encounters/cycle_list'
  get 'encounter_creatures/player_show'
  get 'statuses/player_show'
  get 'encounters/load_encounter'

  resources :creatures do
    member do
      get :delete
    end
  end

  resources :encounter_creatures, :except => [:index] do
    member do
      get :delete
    end
  end

  resources :statuses, :except => [:index] do
    member do
      get :delete
    end
  end

  resources :encounters, :except => [:show, :edit, :update] do
    member do
      get :delete
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
