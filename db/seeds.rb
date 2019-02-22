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
    address:      '9 rue jean louis renardon, 69650 Saint Germain au mont d\'or',
    description:  'A beautiful skate',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1531565637446-32307b194362?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=626&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Julia\'s scooter',
    category:     'scooter',
    address:      '19 rue de Turenne, 75004 Paris',
    description:  'Lovely trotinette',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1495110314580-48a98403a6e7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=647&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Julia\'s palm',
    category:     'swim',
    address:      '9 rue d\'Orsel, 75018 Paris',
    description:  'Nice palme in Piccadilly',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1499242015907-fd91d5d02f13?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Celia\'s roller',
    category:     'roller skates',
    address:      '14 Rue Crespin du Gast, 75011 Paris',
    description:  'Beautiful roller skate',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1547516453-595787ac5b6b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Dania\'s skateboard',
    category:     'skateboard',
    address:      '209 rue Saint Maur, 75010 Paris',
    description:  'A beautiful skate',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1467546706352-fa0391181b7c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Emily\'s bike',
    category:     'bike',
    address:      '9 rue d\'orsel',
    description:  'Try my bike!',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1485965120184-e220f721d03e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Guillaume\'s skateboard',
    category:     'skateboard',
    address:      '53 rue sauffroy, 75017 Paris',
    description:  'A beautiful skate',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1508749793169-bd8155dd495b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1001&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Jule\'s bike',
    category:     'bike',
    address:      '4, Rue de la Fontaine Bouillante, 02810, Saint-Gengoulph, Aisne, Hauts-de-France',
    description:  'Try my bike!',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1487803836022-91054ca05fdd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Marine\'s bike',
    category:     'bike',
    address:      '108, Le Vernay, 71250, Chérizet, Saône-et-Loire, Bourgogne-Franche-Comté',
    description:  'Try my bike!',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1505705694340-019e1e335916?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2089&q=80',
    user_id:      rand(1..4)
  },
  {
    name:        'Elie\'s skate',
    category:     'skateboard',
    address:      '101, La Bâche, Mavilly-Mandelot, Côte-d\'Or, Bourgogne-Franche-Comté',
    description:  'A beautiful skate',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1499418695569-c7733d83ef5e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Coralie\'s scooter',
    category:     'scooter',
    address:      '196, La Reparerie, 36340, Mouhers, Indre, Centre-Val de Loire',
    description:  'Lovely trotinette',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1541903565640-451825e5aaf8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=947&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Hamza\'s palm',
    category:     'swim',
    address:      '4, Rue de la Poste, 37340, Ambillou, Indre-et-Loire, Centre-Val de Loire',
    description:  'Nice palm in Piccadilly',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1540206351-a5b7c9efe478?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Germain\'s skateboard',
    category:     'skateboard',
    address:      '5, Route de la Gorgere, 87800, Saint-Hilaire-les-Places, Haute-Vienne, Nouvelle-Aquitaine',
    description:  'Beautiful skateboard!',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1446452259634-1c479ec7ff5c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1995&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Louise\'s surf',
    category:     'swim',
    address:      '65, 73130, Saint-Colomban-des-Villards, Auvergne-Rhône-Alpes',
    description:  'My beautiful surf',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1531722569936-825d3dd91b15?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Claire\'s bike',
    category:     'bike',
    address:      '10, Rue de la Cavée, 80160, Fransures, Somme, Hauts-de-France',
    description:  'Try my bike!',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1501236570302-906143a7c9f8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1567&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Pierre\'s skateboard',
    category:     'skateboard',
    address:      '8, Rue de la Hutte Baret, 88220, Raon-aux-Bois, Vosges, Grand Est',
    description:  'A beautiful skate',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1517635133574-8a3781a5290d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Valentine\'s bike',
    category:     'bike',
    address:      '16 villa Gaudelet, 75011 Paris',
    description:  'Try my bike!',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1505158498176-0150297fbd7d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Theo\'s surf',
    category:     'swim',
    address:      'Domaine de Pixérécourt, 54220 Malzéville',
    description:  'My beautiful surf',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1478892312911-cb993bdcae76?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80',
    user_id:      rand(1..4)
  },
  {
    name:         'Alexandre\'s bike',
    category:     'bike',
    address:      'Langhärdle 4, 77784 Oberharmersbach, Allemagne',
    description:  'Try my bike!',
    price:        rand(1..100),
    photo:        'https://images.unsplash.com/photo-1528629297340-d1d466945dc5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1995&q=80',
    user_id:      rand(1..4)
  }
]

products_attributes.each do |attribute|
  product = Product.new(attribute)
  product.remote_photo_url = attribute[:photo]
  product.save!
end

