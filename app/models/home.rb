class Home < ApplicationRecord
  has_many :nstations
  accepts_nested_attributes_for :nstations
end
