class Home < ApplicationRecord
  has_many :nstations, dependent: :destroy
  accepts_nested_attributes_for :nstations, allow_destroy: true, reject_if: :all_blank
  validates :name,:price,:address,:age,  presence: true
end
