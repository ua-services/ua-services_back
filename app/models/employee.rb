class Employee < User
  has_one :employee_information, dependent: :destroy
  has_one :agency, through: :employee_information
  has_many :employee_services
  has_many :services, through: :employee_services
  has_many :bookings, dependent: :restrict_with_error

  accepts_nested_attributes_for :employee_information
end
