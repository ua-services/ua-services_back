class Service < ApplicationRecord
  has_many :employee_services
  has_many :employees, through: :employee_services
  has_many :bookings, dependent: :restrict_with_error
end
