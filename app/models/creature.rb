class Creature < ApplicationRecord
  has_many :statuses
  def roll
    rand(20)+1
  end

  def modifier(ability)
    (ability - 10)/2
  end

  def rollSave(ability)
    roll + ability
  end

  def rollInitiative
    self.initiative = roll+modifier(dexterity)
  end

  def nextTurn
    statuses.each do |status|
      status.duration -= 1
      if status.duration < 0
        removeStatus(status)
        next
      end

      if status.saveType == "fort"
        ability = self.fortitude
      elsif status.saveType == "ref"
        ability = self.reflex
      elsif status.saveType == "will"
        ability = self.will
      end

      if rollSave(ability) >= status.saveDC
        removeStatus(status)
      end
    end
  end

  def addStatus(status)
    statuses.add(status)
    self.strength += status.strChange
    self.dexterity += status.dexChange
    self.constitution += status.conChange
    self.intelligence += status.intChange
    self.wisdom += status.wisChange
    self.charisma += status.chaChange
  end
  
  def removeStatus(status)
    self.strength -= status.strChange
    self.dexterity -= status.dexChange
    self.constitution -= status.conChange
    self.intelligence -= status.intChange
    self.wisdom -= status.wisChange
    self.charisma -= status.chaChange
    self.statuses.destroy(status)
  end
end
