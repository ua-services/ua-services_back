# Agency
Agency.create(name: 'Gurau', phone_number: '+380991231238', address: 'IF', service_industry: 'massage')

# Seed user
Employee.create(
  first_name: 'Wykola',
  last_name: 'Verhnia',
  email: 'consumerf329393@gmail.com',
  password: 'wykola',
  password_confirmation: 'wykola',
  role: 'agency_employee',
  employee_information_attributes: { agency: Agency.first }
)
