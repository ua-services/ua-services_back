class Employee < User
  has_one :employee_information, dependent: :destroy
  has_one :agency, through: :employee_information

  delegate :agency_id, to: :employee_information

  accepts_nested_attributes_for :employee_information
end
