class Agency < ApplicationRecord
  has_many :agency_employee_informations, dependent: :restrict_with_error
  has_many :agency_employees, through: :agency_employee_informations

  validates :name, :address, :phone_number, :service_industry, presence: true
end
