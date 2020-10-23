class RideMechanics < ApplicationRecord
  belongs_to :ride
  has_many :mechanics
end
