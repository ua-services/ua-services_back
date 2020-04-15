class Employee < User
  has_one :employee_information, dependent: :destroy
  has_one :agency, through: :employee_information
  has_one :schedule, as: :schedulable
  has_many :employee_services
  has_many :services, through: :employee_services

  accepts_nested_attributes_for :employee_information
end
