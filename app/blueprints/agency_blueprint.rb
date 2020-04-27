class AgencyBlueprint < Blueprinter::Base
  identifier :id

  fields :name, :address, :phone_number, :service_industry, :email,
         :description, :lng, :lat

  view :with_employees do
    association :employees, blueprint: EmployeeBlueprint
  end
end
