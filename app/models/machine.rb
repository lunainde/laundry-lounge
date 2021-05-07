class Machine < ApplicationRecord
  belongs_to :user
  has_many_attached :photos, dependent: :destroy
  validates :photos, length: { minimum: 4 }
  has_many :bookings, dependent: :destroy
  validates :business_name, :business_type, :location, :machine_type, :description, :price, presence: true
  validates :business_name, length: { minimum: 3 }
  validates :business_type, inclusion: { in: ["Cafe", "Bar", "Gym", "Shopping Mall", "Coworking Space", "University & Library", "Other"]}
  validates :machine_type, inclusion: { in: ["Washer", "Dryer", "Washer & Dryer"]}
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
end
