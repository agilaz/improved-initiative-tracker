class AddEncCreatureNumber < ActiveRecord::Migration[5.0]
  def change
    add_column(:creatures,:number,:integer)
  end
end
