class AddDefaultValues < ActiveRecord::Migration[5.0]
  def change
    change_column_default(:statuses, :duration, 1)
    change_column_default(:statuses, :save_type, 'Fort')
    change_column_default(:statuses, :save_DC, 0)
  end
end
