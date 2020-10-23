require "rails_helper"

describe "As a user," do
  describe "When I go to a mechanic's show page," do
    before :each do
      @park = AmusementPark.create(park_name: "FunLand", admission_price: 50.00)
      @ride1 = Ride.create(ride_name: "The Swoosh", thrill_rating: 8, amusement_park_id: @park.id)
      @ride2 = Ride.create(ride_name: "Spray Delta", thrill_rating: 7, amusement_park_id: @park.id)
      @ride3 = Ride.create(ride_name: "Lava Deluxe", thrill_rating: 10, amusement_park_id: @park.id)
      @stacy = Mechanic.create(mechanic_name: "Stacey Macey", experience: 12)
      @ride_mechanic_1 = RideMechanic.create(ride_id: @ride1.id, mechanic_id: @stacy.id)
      @ride_mechanic_2 = RideMechanic.create(ride_id: @ride2.id, mechanic_id: @stacy.id)
    end

    it "I see their name, years of experience, and names of all rides they're working on" do
      visit "/mechanics/#{@stacy.id}"

      expect(page).to have_content("Mechanic: #{@stacy.mechanic_name}")
      expect(page).to have_content("Years of Experience: #{@stacy.experience}")
      expect(page).to have_content("Current rides they're working on:")
      expect(page).to have_content("#{@ride1.ride_name}")
      expect(page).to have_content("#{@ride2.ride_name}")
    end

    it "I also see a form to add a ride to their workload" do
      visit "/mechanics/#{@stacy.id}"

      expect(page).to have_content("Add a ride to workload:")
      expect(page).to have_content("Ride ID:")
      expect(page).to have_button("Search")
    end

    it "When I fill in that field with an id of a ride that exists in the database, and I click submit, I’m taken back to that mechanics show page, and I see the name of that newly added ride on this mechanics show page" do
      visit "/mechanics/#{@stacy.id}"

      fill_in("Ride ID:", with: "#{@ride3.id}")
      click_on("Search")

      expect(page).to have_content("#{@ride3.ride_name}")
    end
  end
end
