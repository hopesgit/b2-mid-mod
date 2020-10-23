require "rails_helper"

describe AmusementPark, type: :model do
  describe "relationships" do
    it {should have_many :rides}
  end

  describe "methods" do
    before :each do
      @park = AmusementPark.create(park_name: "FunLand", admission_price: 50.00)
      @ride1 = Ride.create(ride_name: "The Swoosh", thrill_rating: 8, amusement_park_id: @park.id)
      @ride2 = Ride.create(ride_name: "Spray Delta", thrill_rating: 7, amusement_park_id: @park.id)
    end
    it "#average_thrill_rating" do
      expect(@park.average_thrill_rating).to eq(7.5)
    end
  end
end
