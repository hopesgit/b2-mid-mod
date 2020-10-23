class CreateAmusementPark < ActiveRecord::Migration[5.2]
  def change
    create_table :amusement_parks do |t|
      t.string :park_name
      t.float :admission_price
    end
  end
end
