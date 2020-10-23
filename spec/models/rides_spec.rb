require "rails_helper"

describe Ride, type: :model do
  describe "relationships" do
    it {should have_many :mechanics}
    it {should belong_to :amusement_park}
  end
end
