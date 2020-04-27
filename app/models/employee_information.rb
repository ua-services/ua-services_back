class EmployeeInformation < ApplicationRecord
  belongs_to :employee
  belongs_to :agency, optional: true
end
