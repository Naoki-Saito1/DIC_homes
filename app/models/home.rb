class Home < ApplicationRecord
  has_many :nstations
  accepts_nested_attributes_for :nstations, allow_destroy: true, reject_if: :all_blank
end
