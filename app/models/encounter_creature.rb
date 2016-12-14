# Name: Edward Kennedy
# Course: CSC 415
# Semester: Fall 2016
# Instructor: Dr. Pulimood
# Project name: Improved Initiative Tracker
# Description: Pathfinder initiative tracker and status manager
# Filename:encounter_creature.rb
# Description:stores all information about a creature in combat
# Last modified on: 12/13/16
class EncounterCreature < Creature
  has_many :statuses
  belongs_to :encounter #Added for the final exam

  scope :initiative_order, lambda { order("initiative DESC, dexterity DESC") }

  def copy(other)
    self.attributes = other.attributes.except("type", "id", "initiative")
  end

  def roll
    rand(20)+1
  end

  def modifier(ability)
    (ability - 10)/2
  end

  def roll_save(ability)
    roll + ability
  end

  def roll_initiative
    self.initiative = roll+modifier(dexterity)
  end

  def next_turn
    statuses.to_a.each do |status|
      ability = 0
      if status.save_type == "Fort"
        ability = self.fortitude
      elsif status.save_type == "Ref"
        ability = self.reflex
      elsif status.save_type == "Will"
        ability = self.will
      end

      status.duration -= 1
      if status.duration <= 0
        remove_status(status)
      elsif status.repeat_save? and roll_save(ability) >= status.save_DC
        remove_status(status)
      else
        status.save
      end
    end
  end

  def add_status(status)
    statuses << status
    self.strength += status.str_change
    self.dexterity += status.dex_change
    self.constitution += status.con_change
    self.intelligence += status.int_change
    self.wisdom += status.wis_change
    self.charisma += status.cha_change
    self.save
  end

  def remove_status(status)
    self.strength -= status.str_change
    self.dexterity -= status.dex_change
    self.constitution -= status.con_change
    self.intelligence -= status.int_change
    self.wisdom -= status.wis_change
    self.charisma -= status.cha_change
    self.statuses.destroy(status)
    self.save
  end

end
