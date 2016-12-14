#Entire file added for the final exam

# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:users_controller.rb
# Description:Handle user account creation
# Last modified on: 12/13/16
class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    #Make a new user and log them in
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to(encounters_path)
    else
      render('new')
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
