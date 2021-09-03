# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Bye bye all events, users and bookings...'

User.destroy_all
Event.destroy_all

puts 'Creating new events...'

event1 = Event.create(postcode: 'EC1M 4AN', restaurant_name: 'Dans Le Noir', start_time: '2021-09-01 18:30:00 -0700', end_time: '2021-09-01 21:30:00 -0700', category: 7, event_name: 'Delight Moment', event_descritpion: 'It is designed to heighten the senses and change perceptions.', price: 60, image_url: 'french.jpg')
event2 = Event.create(postcode: 'E1 6QR', restaurant_name: 'Caboose', start_time: '2021-09-16 11:30:00 -0700', end_time: '2021-09-16 14:30:00 -0700', category: 0, event_name: 'BYOB (oooo yea!)', event_descritpion: 'Hailed as the most unique group dining experience in London.', price: 35, image_url: 'drinks.jpg')
event3 = Event.create(postcode: 'W1U 3JR', restaurant_name: 'Xier', start_time: '2021-09-19 11:30:00 -0700', end_time: '2021-09-19 14:30:00 -0700', category: 6, event_name: 'Scandinavia & further afield in Japan', event_descritpion: 'The menu comprises of the finest season ingredients, all of which are combined to create a divine ten-course tasting menu.', price: 120, image_url: 'scandi.jpg')
event4 = Event.create(postcode: 'W1T 3LZ', restaurant_name: 'Greyhound Cafe', start_time: '2021-09-26 11:00:00 -0700', end_time: '2021-09-26 14:30:00 -0700', category: 21, event_name: 'Bringing a taste of Bangkok to central London', event_descritpion: "When it comes to restaurants in London, sometimes it feels like we've seen it all before, but that's certainly not the case", price: 70, image_url: 'bangkok.jpg')
event5 = Event.create(postcode: 'SW1W 0PS', restaurant_name: 'The English Grill', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14:30:00 -0700', category: 3, event_name: 'Plush, decadent and bursting with old-school British charm', event_descritpion: "Dishes offer the finest British and seasonal produce, including top-quality cuts of meat, handled to perfection in the kitchen's charcoal-fired Josper grill.", price: 180, image_url: 'british.jpg')
event6 = Event.create(postcode: 'N1 1RA', restaurant_name:'Hoxley and Porter', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14 12:30:00 -0700', category: 1, event_name:'Lucky British', event_descritpion: "Step off Islington’s bustling Upper Street and prepare to embark on one hell of a drinking and dining adventure.", price: 65, image_url: 'british.jpg')
event7 = Event.create(postcode: 'E9 5EN', restaurant_name:'Barge East Gardens', start_time: '2021-09-30 19:45:00 -0700', end_time: '2021-09-30 14 22:30:00 -0700', category: 3, event_name:'Spring Gardens', event_descritpion: "One of the largest outdoor dining venues in East London and a hot spot to drink & dine with stunning canal side views.", price: 21, image_url: 'scandi.jpg')
event8 = Event.create(postcode: 'NW1 1BA', restaurant_name:'Lost Boy Pizza', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14 12:30:00 -0700', category: 16, event_name:'Bottomless Brunch', event_descritpion: "The world’s only vampire-themed pizzeria, this restaurant and bar near Mornington Crescent is a must-visit for fans of 80's nostalgia, quirky pizza toppings", price: 40, image_url: 'bangkok.jpg')
event9 = Event.create(postcode: 'SW11 1TD', restaurant_name:'The Schoolhouse', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14 12:30:00 -0700', category: 19, event_name:'Ain\'t nothing like the old-school', event_descritpion: "Fancy something strange? Often find yourself longing for those glory days when Grange Hill was all over the TV guide, when Freddo’s were a cool 10p and when it was perfectly acceptable to wear trainers that flashed on every stride?", price: 35, image_url: 'french.jpg')
event10 = Event.create(postcode: 'W1F 0AH', restaurant_name:'Absurd Bird SOHO', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14 12:30:00 -0700', category: 0, event_name:'Absurd nights out', event_descritpion: "IT’S A TALE OF 2 OUTCAST BIRDS WHO FORM A HEART WARMING & UNLIKELY FRIENDSHIP. THEY EMBARK ON A SERIES OF OUTLANDISH ADVENTURES... INCLUDING A JAIL BREAK FROM THE CUCKOOS’S NEST, WHERE THEY PICK UP A FLOCK OF ECCENTRIC COMPANIONS & TOGETHER NAVIGATE THE TWISTS & TURNS OF LIFE.".capitalize, price: 15, image_url: 'drinks.jpg')
puts 'Creating new users...'

user1 = User.create(email: 'test@test.com', password: '123456', first_name: 'Test', last_name: 'Test')
user2 = User.create(email: 'ivory99142@gmail.com', password: '123456', first_name: 'Ivory', last_name: 'Lau', picture_url: 'https://avatars.githubusercontent.com/u/86608444?v=4')
user3 = User.create(email: 'miavjimenez28@gmail.com', password: '123456', first_name: 'Mia', last_name: 'Jimenez', picture_url: 'https://avatars.githubusercontent.com/u/84193378?v=4')
user4 = User.create(email: 'henryamutschler@gmail.com', password: '123456', first_name: 'Henry', last_name: 'Mutschler', picture_url: 'IMG_3673.jpg')
user5 = User.create(email: 'fernandesdaniella@hotmail.com', password: '123456', first_name: 'Daniella', last_name: 'Fernandes', picture_url: 'https://avatars.githubusercontent.com/u/84285887?v=4')
user6 = User.create(email: 'louisphillipd1@gmail.com', password: '123456', first_name: 'Louis', last_name: 'Drinkwaters', picture_url: 'https://avatars.githubusercontent.com/u/53006381?v=4')

puts 'We are almost there...'
puts 'Adding few bookings for our users...'

Booking.create(user_id: user2.id, event_id: event3.id, ticket_amount: 3)
Booking.create(user_id: user3.id, event_id: event1.id, ticket_amount: 5)
Booking.create(user_id: user4.id, event_id: event4.id, ticket_amount: 2)
Booking.create(user_id: user2.id, event_id: event4.id, ticket_amount: 1)

puts 'Adding several favourites...'

Favourite.create(user_id: user2.id, event_id: event2.id)
Favourite.create(user_id: user3.id, event_id: event2.id)
Favourite.create(user_id: user3.id, event_id: event1.id)
Favourite.create(user_id: user4.id, event_id: event1.id)

puts "#{Event.count} events, #{User.count} users, #{Booking.count} bookings and #{Favourite.count} favourites are added!"
