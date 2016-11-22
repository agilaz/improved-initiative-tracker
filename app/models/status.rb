class Status < ApplicationRecord
  belongs_to :encounter_creature
  validates_presence_of :name
end
