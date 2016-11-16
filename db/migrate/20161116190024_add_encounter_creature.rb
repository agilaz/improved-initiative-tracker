class AddEncounterCreature < ActiveRecord::Migration[5.0]
  def change
    add_column(:creatures,:type,:string)
  end
end
