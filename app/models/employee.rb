class Employee < User
  has_many :employee_services
  has_many :services, through: :employee_services
  has_many :bookings, dependent: :restrict_with_error
  has_one :own_agency, class_name: 'Agency', foreign_key: 'owner_id', inverse_of: :owner, dependent: :destroy
  has_one :employee_information, dependent: :destroy
  has_one :agency, through: :employee_information

  # TODO: move to mutations
  after_create_commit :set_agency_id_on_employee_informations, on: :create, if: proc { |employee| employee.agency_admin? }

  accepts_nested_attributes_for :employee_information
  accepts_nested_attributes_for :own_agency

  delegate :agency_id, to: :employee_information, allow_nil: true

  private

  def set_agency_id_on_employee_informations
    self.agency = own_agency
  end
end
