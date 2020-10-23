class Create < ActiveRecord::Migration[5.2]
  def change
    create_table :amusement_park_rides do |t|
      t.references :ride, foreign_key: true
      t.references :amusement_park, foreign_key: true
    end
  end
end
