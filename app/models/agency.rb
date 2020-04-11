class Agency < ApplicationRecord
  validates :name, :address, :phone_number, :service_industry, presence: true
end
