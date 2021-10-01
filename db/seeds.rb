# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users #########################################
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
  
# Recipes #######################################
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
  title: 'Ube Malasadas',
  body: 'A riff on the Portuguese fried dough found in Hawaii, this fried pastry filled with ube will surely satisfy your sweet tooth.',
  servings: 4,
  user_id: 1,
  public: true
})  

Recipe.create!({
  title: 'Greek Dolmades',
  body: 'Little appetizers of herby mixed rice wrapped in grape leaves that will have you picking at it for more.',
  servings: 2,
  user_id: 4,
  public: true
})  

Recipe.create!({
  title: 'Simple Borscht',
  body: 'A Ukranian beet soup that will warm your body as much as it stains your hands.',
  servings: 4,
  user_id: 3,
  public: true
})  

Recipe.create!({
  title: 'Caprese Salad',
  body: 'A simple italian salad consisting of tomato, mozarella, and herbs',
  servings: 1,
  user_id: 5,
  public: true
})  

Recipe.create!({
  title: 'Ratatouille',
  body: 'A stunning dish of beautifully arranged vegetables, this showstopper of a dish will melt even the coldest of hearts and prove that anyone can cook',
  servings: 6,
  user_id: 5,
  public: true
})  

Recipe.create!({
  title: 'Bacon and Potato Breakfast Hash',
  body: 'This hearty dish of bacon and potatoes is sure to give you enough energy to start your day',
  servings: 4,
  user_id: 6,
  public: true
})  

# Ingredients ###################################
Ingredient.create!({
  item: 'Beef Knuckle Bone',
  description: '6 large beef knuckle bones',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Ginger',
  description: '2 large knobs of ginger',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Garlic',
  description: '1 large head of garlic',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Onion',
  description: '4 yellow onions',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Cinnamon',
  description: '4 sticks of cinnamon',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Pepper',
  description: '1/4 cup of whole black peppercorns',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Star anise',
  description: '4 stars of star anise',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Beef Brisket',
  description: '1 lb of beef brisket',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Salt',
  description: 'Salt to taste',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Fish sauce',
  description: '1/4 cup of fish sauce, more to taste',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Beef Eye Round',
  description: '1 lb of beef eye round',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Flat rice noodles',
  description: '1 lb of flat rice noodles, fresh or dried',
  recipe_id: 1
})

