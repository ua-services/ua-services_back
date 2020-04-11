#Agency
Agency.create(name: 'Gurau', phone_number: '+380991231238', address: 'IF', service_industry: 'massage')

# Seed user
User.create(
    first_name: 'Wykola',
    last_name: 'Verhnia',
    email: 'wykola@gmail.com',
    password: 'wykola',
    password_confirmation: 'wykola',
    role: 'consumer'
)
