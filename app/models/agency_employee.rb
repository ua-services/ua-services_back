class AgencyEmployee < Employee
  has_one :agency_employee_information, dependent: :destroy
  has_one :agency, through: :agency_employee_information

  accepts_nested_attributes_for :agency_employee_information

  delegate :agency_id, to: :agency_employee_information

  validates :agency_id, presence: true
end
