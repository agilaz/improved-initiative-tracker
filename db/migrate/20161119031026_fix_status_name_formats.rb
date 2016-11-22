# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:0161119031026_fix_status_name_formats.rb
# Description:fix the naming conventions in the statuses db
# Last modified on: 11/22/16
class FixStatusNameFormats < ActiveRecord::Migration[5.0]
  def change
    rename_column(:statuses, :repeatSave,  :repeat_save)
    rename_column(:statuses, :saveType, :save_type)
    rename_column(:statuses, :saveDC,  :save_DC)
    rename_column(:statuses, :strChange,  :str_change)
    rename_column(:statuses, :dexChange,  :dex_change)
    rename_column(:statuses, :conChange,  :con_change)
    rename_column(:statuses, :intChange,  :int_change)
    rename_column(:statuses, :wisChange,  :wis_change)
    rename_column(:statuses, :chaChange,  :cha_change)

  end
end
