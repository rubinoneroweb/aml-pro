class AddSpeedToMetalwork < ActiveRecord::Migration
  def change
    add_column :metalworks, :speed, :float
  end
end
