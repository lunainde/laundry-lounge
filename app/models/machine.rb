class Machine < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :business_name, :business_type, :location, :machine_type, :price, presence: true
end
