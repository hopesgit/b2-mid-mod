require "rails_helper"

describe "As a user, " do
  describe "when I visit the mechanics index page, " do
    it "I see a header saying 'All Mechanics' and a list of all their names and years of experience" do
      mechanic = Mechanic.create(name: "Sam Mills", experience: 10)
      visit ("/mechanics")

      expect(page).to have_content("All Mechanics")
      expect(page).to have_content("#{mechanic.name} - #{mechanic.experience} years of experience")
    end
  end
end
