class DropAmusementParkRides < ActiveRecord::Migration[5.2]
  def change
    drop_table :amusement_park_rides
  end
end
