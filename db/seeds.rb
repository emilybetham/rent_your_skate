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
    name:         'Julia\'s skate',
    category:     'skateboard',
    address:      '7 Boundary St, London E2 7JE',
    description:  'A beautiful skate',
    price:        15,
    photo:        'https://images.unsplash.com/photo-1531565637446-32307b194362?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=626&q=80',
    user_id:      4
  },
  {
    name:         'Julia\'s scooter',
    category:     'scooter',
    address:      '19 rue de Turenne, 75004 Paris',
    description:  'Lovely trotinette',
    price:        18,
    photo:        'https://images.unsplash.com/photo-1495110314580-48a98403a6e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=647&q=80',
    user_id:      4
  },
  {
    name:         'Julia\'s palm',
    category:     'swim',
    address:      '9 rue d\'Orsel, 75018 Paris',
    description:  'Nice palme in Piccadilly',
    price:        9,
    photo:        'https://images.unsplash.com/photo-1499242015907-fd91d5d02f13?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    user_id:      4
  },
  {
    name:         'Celia\'s roller',
    category:     'roller skates',
    address:      '14 Rue Crespin du Gast, 75011 Paris',
    description:  'Nice palme in Piccadilly',
    price:        9,
    photo:        'https://images.unsplash.com/photo-1517177646641-83fe10f14633?ixlib=rb-1.2.1&auto=format&fit=crop&w=804&q=80',
    user_id:      3
  },
  {
    name:         'Dania\'s skateboard',
    category:     'skateboard',
    address:      '209 rue Saint Maur, 75010 Paris',
    description:  'Nice palme in Piccadilly',
    price:        9,
    photo:        'https://images.unsplash.com/photo-1467546706352-fa0391181b7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    user_id:      2
  },
  {
    name:         'Emily\'s bike',
    category:     'bike',
    address:      '123 avenue de suffren, 75015 Paris',
    description:  'Nice palme in Piccadilly',
    price:        9,
    photo:        'https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    user_id:      1
  }
]

products_attributes.each do |attribute|
  product = Product.new(attribute)
  product.remote_photo_url = attribute[:photo]
  product.save!
end
# Product.create!(products_attributes)
