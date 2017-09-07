Photo.destroy_all
User.destroy_all
Category.destroy_all
Event.destroy_all
Profile.delete_all

ana = User.create(email: "ana@paula.com", password: "anapaula")

sport_fitness = Category.create(name: "Sport & Fitness")
outdoor_adventure = Category.create(name: "Outdoor & Adventure")

event = Event.create(name: "My super nice event",
  description: "Will be the best event ever",
  location: "Amsterdam",
  price: 50,
  capacity: 20,
  guests: 0,
  includes_food: true,
  includes_drinks: false,
  starts_at: "2017/12/01 09:00",
  ends_at: "2017/12/01 12:00",
  active: true,
  picture: "http://static3.businessinsider.com/image/58000318da177d3a288b49f1-480/cass-detroit-tiny-home.jpg",
  user: ana)

event2 = Event.create(name: "Meepo party",
  description: "Best dog party in The Netherlands",
  location: "Eindhoven",
  price: 100,
  capacity: 20,
  guests: 5,
  includes_food: true,
  includes_drinks: true,
  starts_at: "2017/12/01 15:00",
  ends_at: "2017/12/01 19:00",
  active: true,
  categories: [sport_fitness, outdoor_adventure],
  picture: "https://i.ytimg.com/vi/SfLV8hD7zX4/maxresdefault.jpg",
user: ana)

event3 = Event.create(name: "Code meeting",
  description: "Meeting to study something",
  location: "Rotterdam",
  price: 5,
  capacity: 20,
  guests: 10,
  includes_food: false,
  includes_drinks: false,
  starts_at: 10.days.from_now,
  ends_at: 12.days.from_now,
  active: true,
  categories: [outdoor_adventure],
  picture: "http://www.slate.com/content/dam/slate/articles/health_and_science/science/2013/05/130503_SCI_Multitask.jpg.CROP.article568-large.jpg",
user: ana)

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1504780251/dog1_dcai03.jpg", event: event2)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1504780317/dog2_di73gb.jpg", event: event2)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1504780318/dog3_oo1leh.jpg", event: event2)
photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/djxmmaqyo/image/upload/v1504780318/dog4_q7n44c.jpg", event: event2)
