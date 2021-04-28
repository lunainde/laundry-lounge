class Machine < ApplicationRecord
  belongs_to :user

  validates :business_name, :business_type, :location, :machine_type, :price, presence: true
end
