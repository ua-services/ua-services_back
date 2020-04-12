class EmployeeInformation < ApplicationRecord
  belongs_to :employee
  belongs_to :agency, optional: true

  validate :agency_is_present, if: -> { employee.agency_employee? || employee.agency_admin? }

  private

  def agency_is_present
    errors.add(:agency_id, 'must be valid') unless agency_id && Agency.find_by_id(agency_id)
  end
end
