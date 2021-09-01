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

event1 = Event.create(postcode: 'EC1M 4AN', restaurant_name: 'Dans Le Noir', start_time: '2021-09-01 18:30:00 -0700', end_time: '2021-09-01 21:30:00 -0700', category: 7, event_name: 'Delight Moment', event_descritpion: 'It is designed to heighten the senses and change perceptions.', price: 60)
event2 = Event.create(postcode: 'E1 6QR', restaurant_name: 'Caboose', start_time: '2021-09-16 11:30:00 -0700', end_time: '2021-09-16 14:30:00 -0700', category: 0, event_name: 'BYOB (oooo yea!)', event_descritpion: 'Hailed as the most unique group dining experience in London.', price: 35)
event3 = Event.create(postcode: 'W1U 3JR', restaurant_name: 'Xier', start_time: '2021-09-19 11:30:00 -0700', end_time: '2021-09-19 14:30:00 -0700', category: 6, event_name: 'Scandinavia & further afield in Japan', event_descritpion: 'The menu comprises of the finest season ingredients, all of which are combined to create a divine ten-course tasting menu.', price: 120)
event4 = Event.create(postcode: 'W1T 3NB', restaurant_name: 'Greyhoun Cafe', start_time: '2021-09-26 11:00:00 -0700', end_time: '2021-09-26 14:30:00 -0700', category: 21, event_name: 'Bringing a taste of Bangkok to central London', event_descritpion: "When it comes to restaurants in London, sometimes it feels like we've seen it all before, but that's certainly not the case", price: 70)
event5 = Event.create(postcode: 'SW1W 0PS', restaurant_name: 'The English Grill', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14:30:00 -0700', category: 3, event_name: 'Plush, decadent and bursting with old-school British charm', event_descritpion: "Dishes offer the finest British and seasonal produce, including top-quality cuts of meat, handled to perfection in the kitchen's charcoal-fired Josper grill.", price: 180)

puts 'Creating new users...'

user1 = User.create(email: 'test@test.com', password: '123456', first_name: 'Test', last_name: 'Test')
user2 = User.create(email: 'ivory99142@gmail.com', password: '123456', first_name: 'Ivory', last_name: 'Lau')
user3 = User.create(email: 'miavjimenez28@gmail.com', password: '123456', first_name: 'Mia', last_name: 'Jimenez')
user4 = User.create(email: 'henryamutschler@gmail.com', password: '123456', first_name: 'Henry', last_name: 'Amutschler')
# user5 = User.create(email: 'fernandesdaniella@hotmail.com', password: '123456', first_name: 'Daniella', last_name: 'Fernandes')
# user6 = User.create(email: 'louisphillipd1@gmail.com', password: '123456', first_name: 'Louis', last_name: 'Drinkwaters')

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
