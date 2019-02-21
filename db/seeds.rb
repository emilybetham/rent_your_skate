require 'faker'

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
    address:      '9 rue d\'orsel',
    description:  'lorem',
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


attribute_faker = []
  10.times do attribute_faker <<
  {
  name:         Faker::Creature::Cat.name,
  category:     ["skateboard", "bike", "scooter", "roller skates", "swim"].sample,
  address:      ['116 Castelbou, 12400, Vabres-l\'Abbaye, Aveyron, Occitanie', '115 La Transeuropéenne, 19200, Saint-Étienne-aux-Clos', '84 Avenue de la Brigade Piron, 14640 Villers-sur-Mer',
                '1969 Stiedemann Squares, East Damonmouth Greenland, GL', '40 North 1, Petit Bourg, Petit-Bourg, Basse-Terre, Guadeloupe', '127 Unnamed Road, 224116, Faizabad, Uttar Pradesh, India',
                '644 Tillman Ridges, Mosul, Nineveh Governorate, Iraq', '6476 Upton Unions, Amara, Maysan Governorate, Iraq', '20 Via Morer delle Anime, 31010, Mareno di Piave, Provincia di Treviso, Veneto, Italy',
                '46215 Orn Mill, 958-0203, Murakami-shi, Niigata-ken, Japan', '152, Vidzemes iela, 5422, Daugavpils, Latvia', '901 Florida Plain, Hauckstad, Macao', '198 Hamzin Potok, Rozaje, Rožaje Municipality, Montenegro',
                '156 Unnamed Road, 9691, Fiordland National Park, Southland, New Zealand', '5501 McCullough Branch, Hattfjelldal Municipality, Nordland, Norway', '2209 Genoveva Manors, Agusan del Sur, Caraga, Philippines'
                ].sample,
  description:  'lorem',
  price:        rand(1..100),
  photo:        'https://source.unsplash.com/1600x900/?sport',
  user_id:      rand(1..3),
  }
end

attribute_faker.each do |attribute|
  product_faker = Product.new(attribute)
  product_faker.remote_photo_url = attribute[:photo]
  product_faker.save!
end

