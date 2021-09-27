class Nstation < ApplicationRecord
  has_many :stationhomes, dependent: :destroy
  has_many :nstation_homes, through: :nstations, source: :home
  belongs_to :home
end
