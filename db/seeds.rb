users_attributes = [
  {
    name:         'Emily',
    email:        'emily@gmail.com',
    password:     'password'
  },
  {
    name:         'Dania',
    email:        'dania@gmail.com',
    password:     'password'
  },
  {
    name:         'Celia',
    email:        'celia@gmail.com',
    password:     'password'
  },
  {
    name:         'Julia',
    email:        'julia@gmail.com',
    password:     'password'
  }
]
User.destroy_all
User.create!(users_attributes)

Product.destroy_all
puts 'destroyed all'

products_attributes = [
  {
    name:         'Seb\'s skate',
    category:     'skateboard',
    address:      '7 Boundary St, London E2 7JE',
    description:  'A beautiful skate',
    price:        15,
    photo:        'https://images.unsplash.com/photo-1520045892732-304bc3ac5d8e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
  },
  {
    name:         'Anne\'s scooter',
    category:     'scooter',
    address:      '19 rue de Turenne, 75004 Paris',
    description:  'Lovely trotinette',
    price:        18,
    photo:        'https://images.unsplash.com/photo-1541614705297-1cec36271936?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
  },
  {
    name:         'Romain\'s scooter',
    category:     'scooter',
    address:      '23 rue de Oberkampf, 75011 Paris',
    description:  'Nice palme in Piccadilly',
    price:        9,
    photo:        'https://images.unsplash.com/photo-1541614705297-1cec36271936?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'
  }
]

products_attributes.each do |attribute|
  product = Product.new(attribute)
  product.remote_photo_url = attribute[:photo]
  product.user = User.last
  product.save!
end
# Product.create!(products_attributes)
