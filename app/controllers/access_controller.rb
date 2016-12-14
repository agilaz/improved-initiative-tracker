# Entire file was added for the final exam

# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:access_controller.rb
# Description:Handle user login/logout
# Last modified on: 12/13/16
class AccessController < ApplicationController
  def login
  end

  def try_login
    #make sure fields exist to avoid errors
    if params[:username] && params[:password]
      #grab user, try user-password combo
      user = User.where(:username => params[:username]).first
      if user
        authorized = user.authenticate(params[:password])
      end
    end
    #If login was successful, go to encounters index page; otherwise stay on login page
    if authorized
      session[:user_id] = authorized.id
      redirect_to(encounters_path)
    else
      flash.now[:notice] = "Invalid username or password."
      render('login')
    end

  end

  def logout
    session[:user_id] = nil
    redirect_to(access_login_path)
  end
end
