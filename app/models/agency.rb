class Agency < ApplicationRecord
  has_many :employee_informations, dependent: :restrict_with_error
  has_many :employees, through: :employee_informations

  validates :name, :address, :phone_number, :service_industry, presence: true
end
