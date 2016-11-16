class FixNameFormats < ActiveRecord::Migration[5.0]
  def change
    rename_column(:creatures, :armorClass, :armor_class)
    rename_column(:creatures, :combatManeuverDefense, :combat_maneuver_defense)
    rename_column(:creatures, :maxHitPoints, :max_hit_points)
  end
end
