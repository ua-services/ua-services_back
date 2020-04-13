class AgencyBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :name, :address, :phone_number, :service_industry, :email, :short_description, :lng, :lat,
           :created_at, :updated_at
  end

  view :extended do
    include_view :normal
    association :employees, blueprint: EmployeeBlueprint
  end
end