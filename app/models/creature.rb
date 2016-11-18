class Creature < ApplicationRecord
  scope :alphabetical, lambda { order("name ASC") }
  scope :base_only, lambda { where(:type => nil) }
  validates_presence_of :name
  #todo add more validation
end
