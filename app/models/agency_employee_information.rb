class AgencyEmployeeInformation < ApplicationRecord
  belongs_to :agency_employee
  belongs_to :agency
end
