class EmployeeBlueprint < Blueprinter::Base
  identifier :id

  view :normal do
    fields :first_name, :last_name, :email, :address, :phone_number, :role, :type, :created_at, :updated_at
    field :full_name do |user|
      "#{user.first_name} #{user.last_name}"
    end
  end

  view :extended do
    include_view :normal
    association :agency, blueprint: AgencyBlueprint
  end
end
