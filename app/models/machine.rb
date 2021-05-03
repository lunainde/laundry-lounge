class Machine < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :business_name, :business_type, :location, :machine_type, :price, presence: true
  validates :business_name, length: { minimum: 3 }
  validates :business_type, inclusion: { in: ["Cafe","Bar", "Gym", "Shopping Mall", "Coworking Space", "University & Libraries", "Other"]}
  validates :machine_type, inclusion: { in: ["Washer", "Dryer", "Washer & Dryer"]}
  validates :price, numericality: { greater_than: 0 }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
