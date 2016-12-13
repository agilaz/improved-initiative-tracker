# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:20161213211057_create_users.rb
# Description:adds users, which own multiple encounters
# Last modified on: 12/13/16
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string "username"
      t.string "password_digest"
      t.timestamps
    end
    add_index(:users, :username)
    add_column(:encounters,:user_id,:integer)
    add_index(:encounters, :user_id)
  end
end
