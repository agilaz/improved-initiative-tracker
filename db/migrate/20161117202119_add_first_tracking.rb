class AddFirstTracking < ActiveRecord::Migration[5.0]
  def change
    add_column(:creatures,:is_first,:boolean)
  end
end
