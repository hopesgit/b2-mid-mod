require "rails_helper"

describe "relationships" do
  it {should have_many :mechanics}
  it {should belong_to :amusement_park}
end
