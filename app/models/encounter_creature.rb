class EncounterCreature < Creature
  has_many :statuses

  def copy(other)
      self.attributes = other.attributes.except("type","id")
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
    statuses.each do |status|
      status.duration -= 1
      if status.duration < 0
        removeStatus(status)
        next
      end

      ability = 0
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

  def add_status(status)
    statuses << status
    self.strength += status.strChange
    self.dexterity += status.dexChange
    self.constitution += status.conChange
    self.intelligence += status.intChange
    self.wisdom += status.wisChange
    self.charisma += status.chaChange
  end

  def remove_status(status)
    self.strength -= status.strChange
    self.dexterity -= status.dexChange
    self.constitution -= status.conChange
    self.intelligence -= status.intChange
    self.wisdom -= status.wisChange
    self.charisma -= status.chaChange
    self.statuses.destroy(status)
  end

end
