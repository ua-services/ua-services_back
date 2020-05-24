# Agency
Agency.create(
    name: 'BestMassage',
    address: 'IF',
    phone_number: '+380991231238',
    service_industry: 'Massage',
    email: 'best_massage@gmail.com',
    description: 'Best massage in IF',
    lng: 12.43,
    lat: 17.54
)

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
Employee.create(
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
  first_name: 'Petro',
  last_name: 'Ostapenko',
  email: 'petttttro@gmail.com',
  password: 'indemployee',
  password_confirmation: 'indemployee',
  role: 'individual_employee',
  own_agency_attributes: { name: 'Petro Ostapenko', address: 'IF', phone_number: '+380964483927' }
)
