# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users
User.create!({
  username: 'demouser',
  email: 'demouser@someweb.com',
  password: 'DeMoUsEr555',
  bio: "This is the demo user's bio!"
})

User.create!({
  username: 'BoneAppleTeeth',
  email: 'homecook@io.com',
  password: 'proshef123',
  bio: "My food will always make you say bone app the teeth."
})

User.create!({
  username: 'BeetIt',
  email: 'beetfarmer12@beets.com',
  password: 'battlestargalactica',
  bio: "Bears. Beats. Battlestar Galactica."
})

User.create!({
  username: 'CastIronOnly',
  email: 'betterthanstainless@steel.org',
  password: 'alwaysseasoned',
  bio: "If a pan isn't caked in oil and as heavy as a rock, then it's not a real pan."
})

User.create!({
  username: 'HomeGrownCook',
  email: 'greenthumb@famersonly.com',
  password: 'abundantveggies',
  bio: "My recipes include things you can grow yourself at home!"
})

User.create!({
  username: 'CookOverCampfire',
  email: 'outdoorlife@free.org',
  password: 'rusticcook123',
  bio: "Nothing tastes better than when its cooked outside in the wilderness."
})

# Recipes
Recipe.create!({
  title: 'Pho Dac Biet',
  body: 'A hot beef based soup with rice noodles hailing from Vietnam',
  servings: 6,
  user_id: 2,
  public: true
})

Recipe.create!({
  title: 'Spaghetti Aglio E Olio',
  body: 'Translated simply as spaghetti with garlic and oil, this simple garlic rich pasta dish will be sure to impress anyone.',
  servings: 2,
  user_id: 2,
  public: true
})

Recipe.create!({
  title: 'Test recipe for non public recipes',
  body: 'Testing!',
  servings: 0,
  user_id: 2,
  public: false
})

# Favorites
Favorite.create!({
  user_id: 1,
  recipe_id: 1
})

Favorite.create!({
  user_id: 1,
  recipe_id: 2
})

Favorite.create!({
  user_id: 2,
  recipe_id: 1
})