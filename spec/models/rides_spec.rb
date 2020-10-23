require "rails_helper"

describe Ride, type: :model do
  describe "relationships" do
    it {should have_many(:mechanics).through(:ride_mechanics)}
    it {should belong_to :amusement_park}
  end
end
