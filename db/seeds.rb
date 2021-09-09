# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Bye bye all events, users and bookings...'

Favourite.destroy_all
Booking.destroy_all
Review.destroy_all
User.destroy_all
Event.destroy_all

puts 'Creating new users...'

user1 = User.create(email: 'test@test.com', password: '123456', first_name: 'Test', last_name: 'Test', organizer: true)
user2 = User.create(email: 'ivory@gmail.com', password: '123456', first_name: 'Margaret', last_name: 'Lau', picture_url: 'https://avatars.githubusercontent.com/u/86608444?v=4', organizer: true)
user3 = User.create(email: 'miavjimenez28@gmail.com', password: '123456', first_name: 'Mia', last_name: 'Jimenez', picture_url: 'https://avatars.githubusercontent.com/u/84193378?v=4', organizer: true)
user4 = User.create(email: 'henryamutschler@gmail.com', password: '123456', first_name: 'Henry', last_name: 'Mutschler', picture_url: 'IMG_3673.jpg', organizer: true)
user5 = User.create(email: 'fernandesdaniella@hotmail.com', password: '123456', first_name: 'Daniella', last_name: 'Fernandes', picture_url: 'https://avatars.githubusercontent.com/u/84285887?v=4', organizer: false)
user6 = User.create(email: 'louisphillipd1@gmail.com', password: '123456', first_name: 'Louis', last_name: 'Drinkwaters', picture_url: 'https://avatars.githubusercontent.com/u/53006381?v=4', organizer: false)
user7 = User.create(email: 'bs18839@qmul.ac.uk', password: '123456', first_name: 'Fred', last_name: 'Flintstone', picture_url: 'IMG_3673.jpg', organizer: false)

puts 'Creating new events...'

event1 = Event.create(postcode: 'EC1M 4AN', restaurant_name: 'Dans Le Noir', start_time: '2021-09-01 18:30:00 -0700', end_time: '2021-09-01 21:30:00 -0700', category: 7, event_name: 'Delight Moment', event_descritpion: 'It is designed to heighten the senses and change perceptions.', price: 60, image_url: 'event-image1.png', user_id: user2.id)
event2 = Event.create(postcode: 'E1 6QR', restaurant_name: 'Caboose', start_time: '2021-08-16 11:30:00 -0700', end_time: '2021-09-16 14:30:00 -0700', category: 0, event_name: 'BYOB (oooo yea!)', event_descritpion: 'Hailed as the most unique group dining experience in London.', price: 35, image_url: 'event-image8.jpg', user_id: user2.id)
event3 = Event.create(postcode: 'W1U 3JR', restaurant_name: 'Xier', start_time: '2021-09-19 11:30:00 -0700', end_time: '2021-09-19 14:30:00 -0700', category: 6, event_name: 'Scandinavia & further afield in Japan', event_descritpion: 'The menu comprises of the finest season ingredients, all of which are combined to create a divine ten-course tasting menu.', price: 120, image_url: 'event-image13.jpg', user_id: user4.id)
event4 = Event.create(postcode: 'W1T 3LZ', restaurant_name: 'Greyhound Cafe', start_time: '2021-09-26 11:00:00 -0700', end_time: '2021-09-26 14:30:00 -0700', category: 21, event_name: 'Bringing a taste of Bangkok to London', event_descritpion: "When it comes to restaurants in London, sometimes it feels like we've seen it all before, but that's certainly not the case", price: 70, image_url: 'bangkok.jpg', user_id: user2.id)
event5 = Event.create(postcode: 'SW1W 0PS', restaurant_name: 'The English Grill', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14:30:00 -0700', category: 3, event_name: 'Plush, decadent and bursting with old-school British charm', event_descritpion: "Dishes offer the finest British and seasonal produce, including top-quality cuts of meat, handled to perfection in the kitchen's charcoal-fired Josper grill.", price: 180, image_url: 'british.jpg', user_id: user2.id)
event6 = Event.create(postcode: 'N1 1RA', restaurant_name: 'Hoxley and Porter', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14 12:30:00 -0700', category: 1, event_name:'Lucky British', event_descritpion: "Step off Islington’s bustling Upper Street and prepare to embark on one hell of a drinking and dining adventure.", price: 65, image_url: 'event-image15.jpg', user_id: user3.id)
event7 = Event.create(postcode: 'E9 5EN', restaurant_name: 'Barge East Gardens', start_time: '2021-09-30 19:45:00 -0700', end_time: '2021-09-30 14 22:30:00 -0700', category: 3, event_name:'Spring Gardens', event_descritpion: "One of the largest outdoor dining venues in East London and a hot spot to drink & dine with stunning canal side views.", price: 21, image_url: 'event-image14.png', user_id: user3.id)
event8 = Event.create(postcode: 'NW1 1BA', restaurant_name: 'Lost Boy Pizza', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14 12:30:00 -0700', category: 16, event_name:'Bottomless Brunch', event_descritpion: "The world’s only vampire-themed pizzeria, this restaurant and bar near Mornington Crescent is a must-visit for fans of 80's nostalgia, quirky pizza toppings", price: 40, image_url: 'event-image6.jpg', user_id: user3.id)
event9 = Event.create(postcode: 'SW11 1TD', restaurant_name: 'The Schoolhouse', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14 12:30:00 -0700', category: 19, event_name:'Ain\'t nothing like the old-school', event_descritpion: "Fancy something strange? Often find yourself longing for those glory days when Grange Hill was all over the TV guide, when Freddo’s were a cool 10p and when it was perfectly acceptable to wear trainers that flashed on every stride?", price: 35, image_url: 'event-image12.png', user_id: user3.id)
event10 = Event.create(postcode: 'W1F 0AH', restaurant_name: 'Absurd Bird SOHO', start_time: '2021-09-30 11:00:00 -0700', end_time: '2021-09-30 14 12:30:00 -0700', category: 0, event_name:'Absurd nights out', event_descritpion: "IT’S A TALE OF 2 OUTCAST BIRDS WHO FORM A HEART WARMING & UNLIKELY FRIENDSHIP. THEY EMBARK ON A SERIES OF OUTLANDISH ADVENTURES... INCLUDING A JAIL BREAK FROM THE CUCKOOS’S NEST, WHERE THEY PICK UP A FLOCK OF ECCENTRIC COMPANIONS & TOGETHER NAVIGATE THE TWISTS & TURNS OF LIFE.".capitalize, price: 15, image_url: 'event-image5.png', user_id: user3.id)
event11 = Event.create(postcode: 'EC2A 3AT', restaurant_name: 'Tapas Tuesday', start_time: '2021-09-19 16:00:00 -0700', end_time: '2022-09-30 12:30:00 -0700', category: 20, event_name:'Spanish Night 💃🏽', event_descritpion: "Eat, drink, dance, repeat", price: 35, image_url: 'event-image9.jpg', user_id: user1.id)
event12 = Event.create(postcode: 'EC4V 5BY', restaurant_name: 'Cocorico', start_time: '2021-09-10 13:30:00 -0700', end_time: '2022-09-30 12:30:00 -0700', category: 24, event_name:'Start the weekend off Veggie', event_descritpion: "The focus of this event is on sustainable vegetarian ingredients — from locally foraged herbs to 'ugly' produce that would normally be discarded.", price: 25, image_url: 'event-image3.png', user_id: user3.id)
event13 = Event.create(postcode: 'SE15 5TN', restaurant_name: 'Naifs', start_time: '2021-11-23 16:30:00 -0700', end_time: '2022-09-30 12:30:00 -0700', category: 24, event_name:'South London goes Vegan', event_descritpion: "The food offering at this event consists largely of moreish sharing plates, including plenty of vegan options. Think a mustard leaf and pear Caesar salad, aubergine fritters with Spenwood custard, and Crown Prince squash topped with labneh and spiced butter.", price: 40, image_url: 'event-image2.jpg', user_id: user2.id)
event14 = Event.create(postcode: 'E1 6BD', restaurant_name: 'Bubala', start_time: '2021-09-29 10:00:00 -0700', end_time: '2022-09-30 12:30:00 -0700', category: 24, event_name:'Veggie, Veggie, Veggie', event_descritpion: "The fully vegetarian menu – overseen by former Palomar chef Helen Graham – is all about bold combinations of Middle-Eastern herbs and spices. If you only visit a single restaurant on this list, make it this one.", price: 25, image_url: 'event-image10.jpg', user_id: user3.id)
event15 = Event.create(postcode: 'W1W 6DT', restaurant_name: 'Kin', start_time: '2021-05-01 07:00:00 -0700', end_time: '2022-09-30 12:30:00 -0700', category: 24, event_name:'Brunch. Drink. Vegetarian.', event_descritpion: "Quaint eatery specialising in vegan breakfast staples, sandwiches & sweets, plus coffee & smoothies.", price: 40, image_url: 'sweetfood.jpg', user_id: user1.id)
event16 = Event.create(postcode: 'EC1V 4NN', restaurant_name: 'The Gate', start_time: '2021-12-01 13:15:00 -0700', end_time: '2022-09-30 12:30:00 -0700', category: 24, event_name:'California Vegetarian Food Festival', event_descritpion: "The best food festival ever. Drinks, food and good vibes only.", price: 27, image_url: 'event-image7.jpg', user_id: user3.id)
event17 = Event.create(postcode: 'EC1V 1JB', restaurant_name: 'Nightjar', start_time: '2021-09-11 14:30:00 -0700', end_time: '2021-09-30 17:30:00 -0700', category: 17, event_name:'Jazzy Night', event_descritpion: "A unique haunt masked between a chicken shop and a newsagent, there's nothing bog standard about this prohibition-inspired nook.", price: 25, image_url: 'event-image11.jpg', user_id: user3.id)
event18 = Event.create(postcode: 'W1D 6JE', restaurant_name: 'Opium', start_time: '2021-09-12 14:00:00 -0700', end_time: '2021-09-30 17:0:00 -0700', category: 17, event_name:'Heart of Southeast Asian', event_descritpion: "An ordinary little moment for the weekend", price: 29, image_url: 'event-image4.jpg', user_id: user2.id)

event19 = Event.create(postcode: 'SE1 1RQ', restaurant_name: 'Call Me Mr Lucky', start_time: '2021-09-12 04:00:00 -0700', end_time: '2021-09-30 07:0:00 -0700', category: 17, event_name:'Breakfast with Mr Lucky', event_descritpion: "Playful and cheeky attitude light up your day!", price: 33, image_url: 'breakfast.jpg', user_id: user2.id)
event20 = Event.create(postcode: 'EC1A 9LH', restaurant_name: 'Oriole', start_time: '2021-09-12 12:00:00 -0700', end_time: '2021-09-30 16:0:00 -0700', category: 17, event_name:'Truly Stress-free Exotic Evening', event_descritpion: "Oasis of warmth, mystery and magic in London", price: 42, image_url: 'event-image7.jpg', user_id: user2.id)

puts 'We are almost there...'
puts 'Adding few bookings for our users...'

booking1 = Booking.create(user_id: user2.id, event_id: event3.id, ticket_amount: 3)
booking2 = Booking.create(user_id: user3.id, event_id: event1.id, ticket_amount: 5)
booking3 = Booking.create(user_id: user4.id, event_id: event4.id, ticket_amount: 2)
booking4 = Booking.create(user_id: user2.id, event_id: event4.id, ticket_amount: 1)

puts 'Adding several reviews for organizers'

Review.create(user_id: user4.id, booking_id: booking1.id, content: 'Amazing food!!! It was full of surprises!! Thanks Enigma and your great organizer team!!')
Review.create(user_id: user2.id, booking_id: booking2.id, content: 'Beautiful Night! My girlfriends loved it! We will definitely get more "unknown" events from you!')
Review.create(user_id: user2.id, booking_id: booking3.id, content: 'I was pretty nervours as I got the tickets for my date. It turned out everything prefect, and now she is my girlfriend! Your team are awesome!')
Review.create(user_id: user3.id, booking_id: booking4.id, content: 'Probably the best dinner experience in London!')

puts 'Adding several favourites...'

Favourite.create(user_id: user2.id, event_id: event2.id)
Favourite.create(user_id: user3.id, event_id: event2.id)
Favourite.create(user_id: user3.id, event_id: event1.id)
Favourite.create(user_id: user4.id, event_id: event1.id)

puts "#{Event.count} events, #{User.count} users, #{Booking.count} bookings, #{Review.count} reviews and #{Favourite.count} favourites are added!"
