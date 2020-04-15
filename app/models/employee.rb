class Employee < User
  has_one :employee_information, dependent: :destroy
  has_one :agency, through: :employee_information
  has_one :schedule, as: :schedulable

  accepts_nested_attributes_for :employee_information
end
