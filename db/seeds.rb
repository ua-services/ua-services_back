# Consumer
User.create(
    first_name: 'Consumer',
    last_name: 'Consumer',
    email: 'consumer@gmail.com',
    password: 'consumer',
    password_confirmation: 'consumer',
    address: 'IF',
    phone_number: '+380964483927',
    role: 'consumer'
)

# Agency Admin
Employee.create!(
    first_name: 'Agency',
    last_name: 'Admin',
    email: 'agencyadmin@gmail.com',
    password: 'agencyadmin',
    password_confirmation: 'agencyadmin',
    role: 'agency_admin',
    own_agency_attributes: { name: 'Hairstyle', address: 'IF', phone_number: '+380964483927' }
)

# Agency Employee
Employee.create(
    first_name: 'Agency',
    last_name: 'Employee',
    email: 'agencyemployee@gmail.com',
    password: 'agencyemployee',
    password_confirmation: 'agencyemployee',
    address: 'IF',
    phone_number: '+380964483927',
    role: 'agency_employee',
    agency: Agency.first
)

# Individual Employee
Employee.create!(
  first_name: 'Individual',
  last_name: 'Employee',
  email: 'individualemployee@gmail.com',
  password: 'individualemployee',
  password_confirmation: 'individualemployee',
  role: 'individual_employee',
  own_agency_attributes: { name: 'Individual Employee', address: 'IF', phone_number: '+380964483927' }
)
