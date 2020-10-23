require "rails_helper"

describe "As a visitor, " do
  describe "When I visit an amusement park's show page, " do
    before :each do
      @park = AmusementPark.create(park_name: "FunLand", admission_price: 50.00)
      @ride1 = Ride.create(ride_name: "The Swoosh", thrill_rating: 8, amusement_park_id: @park.id)
      @ride2 = Ride.create(ride_name: "Spray Delta", thrill_rating: 7, amusement_park_id: @park.id)
    end
    it "I see the name and price of admissions for that park" do
      visit "/parks/#{@park.id}"

      expect(page).to have_content("#{@park.park_name}")
      expect(page).to have_content("Admissions: $#{@park.admission_price}")
    end

    it "I see the names of all the rides that are at that park" do
      visit "/parks/#{@park.id}"

      expect(page).to have_content("Rides:")
      expect(page).to have_content("#{@ride1.ride_name}")
      expect(page).to have_content("#{@ride2.ride_name}")

    end

    it "I see the average thrill rating of this amusement park's rides" do
      visit "/parks/#{@park.id}"

      expect(page).to have_content("Average Thrill Rating of Rides: #{@park.average_thrill_rating}/10")
    end
  end
end
