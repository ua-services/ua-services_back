class UserBlueprint < Blueprinter::Base
  identifier :id

  fields :first_name, :last_name, :email, :address, :phone_number, :role
  field :full_name do |user|
    "#{user.first_name} #{user.last_name}"
  end
end
