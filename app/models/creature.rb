class Creature < ApplicationRecord
  scope :alphabetical, lambda { order("name ASC") }
  validates_presence_of :name
  #todo add more validation
end
