# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

# Users #########################################
user_1 = User.create!({
  username: 'demouser',
  email: 'demouser@someweb.com',
  password: 'DeMoUsEr555',
  bio: "This is the demo user's bio!"
})

user_2 = User.create!({
  username: 'BoneAppleTeeth',
  email: 'homecook@io.com',
  password: 'proshef123',
  bio: "Bone smack the teeth."
})

user_3 = User.create!({
  username: 'BeetIt',
  email: 'beetfarmer12@beets.com',
  password: 'battlestargalactica',
  bio: "Bears. Beats. Battlestar Galactica."
})

user_4 = User.create!({
  username: 'NotGusteau',
  email: 'anyonecancook@gustos.io',
  password: 'linguini',
  bio: "Anyone can cook."
})

user_5 = User.create!({
  username: 'HomeGrownCook',
  email: 'greenthumb@famersonly.com',
  password: 'abundantveggies',
  bio: "My recipes include things you can grow yourself at home!"
})  
  
user_6 = User.create!({
  username: 'CookOverCampfire',
  email: 'outdoorlife@free.org',
  password: 'rusticcook123',
  bio: "Nothing tastes better than when its cooked outside in the wilderness."
})  

user_7 = User.create!({
  username: 'IMakeJam',
  email: 'pugtoofat@io.com',
  password: 'puggywuggy',
  bio: "Come try some of my jams!"
})

user_8 = User.create!({
  username: 'Orcam',
  email: 'macroking@gains.com',
  password: 'alwaysbreakpr',
  bio: 'Protein packed meals are the only way to go.',
})

user_9 = User.create!({
  username: 'ColmakIsKing',
  email: 'colmakdh@keyboards.com',
  password: 'ilovevern',
  bio: 'Can reach 102 wpm with colmak layout.'
})

# Recipes #######################################
recipe_1 = Recipe.create!({
  title: 'Beef Pho',
  body: 'A Vietnamese noodle soup consisting of beef bone broth, rice noodles, thinly sliced meat, and various herbs. This variation may not contain all the toppings as a traditional pho, but it will still leave you full and happy.',
  servings: 6,
  user_id: 2
})  
recipe_1_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/pho.jpg')
recipe_1.photo.attach(io: recipe_1_photo, filename: 'pho.jpg')

recipe_2 = Recipe.create!({
  title: 'Spaghetti Aglio E Olio',
  body: 'Translated  as spaghetti with garlic and oil, this simple garlic rich pasta dish will be sure to impress anyone.',
  servings: 4,
  user_id: 2
})  
recipe_2_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/aglio.jpg')
recipe_2.photo.attach(io: recipe_2_photo, filename: 'aglio.jpg')

recipe_3 = Recipe.create!({
  title: 'Malasadas',
  body: 'Portuguese fried dough found in Hawaii, this pillowy fried pastry will surely satisfy your sweet tooth.',
  servings: 4,
  user_id: 1
})  
recipe_3_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/malasadas.jpg')
recipe_3.photo.attach(io: recipe_3_photo, filename: 'malasadas.jpg')

recipe_4 = Recipe.create!({
  title: 'Greek Dolmades',
  body: 'Little appetizers of herby mixed rice wrapped in grape leaves that will have you picking at it for more.',
  servings: 6,
  user_id: 4
})  
recipe_4_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/dolmades.jpg')
recipe_4.photo.attach(io: recipe_4_photo, filename: 'dolmades.jpg')

recipe_5 = Recipe.create!({
  title: 'Simple Borscht',
  body: 'A Ukranian beet soup that will warm your body as much as it stains your hands.',
  servings: 6,
  user_id: 3
})  
recipe_5_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/borscht.jpg')
recipe_5.photo.attach(io: recipe_5_photo, filename: 'borscht.jpg')

recipe_6 = Recipe.create!({
  title: 'Caprese Salad',
  body: 'A simple italian salad consisting of tomato, mozarella, and herbs.',
  servings: 1,
  user_id: 5
})  
recipe_6_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/caprese.jpg')
recipe_6.photo.attach(io: recipe_6_photo, filename: 'caprese.jpg')

recipe_7 = Recipe.create!({
  title: 'Ratatouille',
  body: 'Confit Byaldi, or Ratatouille as it was popularized from the movie, is a stunning dish of beautifully arranged vegetables. This showstopper of a dish will melt even the coldest of hearts.',
  servings: 8,
  user_id: 4
})  
recipe_7_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/ratatouille.jpg')
recipe_7.photo.attach(io: recipe_7_photo, filename: 'ratatouille.jpg')

recipe_8 = Recipe.create!({
  title: 'Pork and Potato Hash',
  body: 'This hearty dish of pork, potatoes, and mixed vegetables will leave you feeling stuffed and ready for a nap right after.',
  servings: 4,
  user_id: 6
})  
recipe_8_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/potato_hash.jpeg')
recipe_8.photo.attach(io: recipe_8_photo, filename: 'potato_hash.jpeg')

recipe_9 = Recipe.create!({
  title: 'Pad See Ew',
  body: 'Sweet and savory stir fried flat rice noodles from Thailand.',
  servings: 4,
  user_id: 2
})
recipe_9_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/pad_see_ew.jpg')
recipe_9.photo.attach(io: recipe_9_photo, filename: 'pad_see_ew.jpg')
  
recipe_10 = Recipe.create!({
  title: 'Apple Pie',
  body: 'Classic American apple pie that will be the perfect way to end any meal.',
  servings: 8,
  user_id: 6
})
recipe_10_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/apple_pie.jpg')
recipe_10.photo.attach(io: recipe_10_photo, filename: 'apple_pie.jpg')
    
recipe_11 = Recipe.create!({
  title: 'Tiramisu',
  body: 'A light and creamy cake of chocolate, espresso, and mascarpone cheese.',
  servings: 6,
  user_id: 1
})
recipe_11_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/tiramisu.jpg')
recipe_11.photo.attach(io: recipe_11_photo, filename: 'tiramisu.jpg')

recipe_12 = Recipe.create!({
  title: 'Chocolate Chip Cookies',
  body: 'A warm cookie with a soft gooey interior that will entice you to bake more.',
  servings: 4,
  user_id: 1
})
recipe_12_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/cookies.jpg')
recipe_12.photo.attach(io: recipe_12_photo, filename: 'cookies.jpg')

recipe_13 = Recipe.create!({
  title: 'Apricot Jam',
  body: 'A simple to make jam that will go great on any slice of bread.',
  servings: 4,
  user_id: 7
})
recipe_13_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/apricot_jam.jpg') 
recipe_13.photo.attach(io: recipe_13_photo, filename: 'apricot_jam.jpg')

recipe_14 = Recipe.create!({
  title: 'Beet Salad',
  body: 'Colorful and delicious, this beet salad will be a beautiful and light lunch for anyone.',
  servings: 3,
  user_id: 3
})
recipe_14_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/beet_salad.jpg')
recipe_14.photo.attach(io: recipe_14_photo, filename: 'beet_salad.jpg')

recipe_15 = Recipe.create!({
  title: 'Crispy Fried Chicken',
  body: 'Crispy and crunchy fried chicken, just like mom made.',
  servings: 6,
  user_id: 8
})
recipe_15_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/fried_chicken.jpg')
recipe_15.photo.attach(io: recipe_15_photo, filename: 'fried_chicken.jpg')

recipe_16 = Recipe.create!({
  title: 'Shrimp Spring Rolls',
  body: 'Rice paper rolls packed with shrimp, fresh herbs, rice noodles and more, these springy and light rolls are an amazing appetizer or meal.',
  servings: 5,
  user_id: 1
})
recipe_16_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/spring_rolls.jpg')
recipe_16.photo.attach(io: recipe_16_photo, filename: 'spring_rolls.jpg')

recipe_17 = Recipe.create!({
  title: 'Homemade Wontons',
  body: 'Light, pillowy, balls of meat packed with shrimp, mushrooms, and more all wrapped in a thin dough',
  servings: 4,
  user_id: 9
})
recipe_17_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/wontons.jpg')
recipe_17.photo.attach(io: recipe_17_photo, filename: 'wontons.jpg')

recipe_18 = Recipe.create!({
  title: 'Snickerdoodles',
  body: "Though cooked indoors, these small and fluffy cookies coated with cinnamon sugar are sure to make you glad you're indoors for once.",
  servings: 6,
  user_id: 6
})
recipe_18_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/snickerdoodles.jpg') 
recipe_18.photo.attach(io: recipe_18_photo, filename: 'snickerdoodles.jpg')

recipe_19 = Recipe.create!({
  title: 'Perfect Prime Rib',
  body: 'A beautifully cooked prime rib that will be the centerpiece of any holiday dinner.',
  servings: 10,
  user_id: 2
})
recipe_19_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/prime_rib.jpg') 
recipe_19.photo.attach(io: recipe_19_photo, filename: 'prime_rib.jpg')

recipe_20 = Recipe.create!({
  title: 'Homemade Ramen Noodles',
  body: 'Fresh noodles made at home that taste better than any instant package you may buy.',
  servings: 4,
  user_id: 1
})
recipe_20_photo = open('https://recipistic-seeds.s3.us-west-1.amazonaws.com/homemade_ramen.jpg')
recipe_20.photo.attach(io: recipe_20_photo, filename: 'homemade_ramen.jpg')
# Ingredients ###################################
# Recipe 1 ingredients 
Ingredient.create!({
  description: '6 large beef knuckle bones',
  recipe_id: 1
})

Ingredient.create!({
  description: '2 large knobs of ginger, halved length-wise',
  recipe_id: 1
})

Ingredient.create!({
  description: '1 large bulb of garlic, halved horizontally',
  recipe_id: 1
})

Ingredient.create!({
  description: '5 yellow onions, 4 halved horizontally, 1 julienned',
  recipe_id: 1
})

Ingredient.create!({
  description: '4 sticks of cinnamon',
  recipe_id: 1
})

Ingredient.create!({
  description: '1/4 cup of whole black peppercorns',
  recipe_id: 1
})

Ingredient.create!({
  description: '4 stars of star anise',
  recipe_id: 1
})

Ingredient.create!({
  description: '1 lb of beef brisket',
  recipe_id: 1
})

Ingredient.create!({
  description: 'Salt to taste',
  recipe_id: 1
})

Ingredient.create!({
  description: '1/4 cup of fish sauce, more to taste',
  recipe_id: 1
})

Ingredient.create!({
  description: '1 lb of raw beef eye round, cut into thin slices',
  recipe_id: 1
})

Ingredient.create!({
  description: '1 lb of flat rice noodles, fresh or dried',
  recipe_id: 1
})

Ingredient.create!({
  description: '1 bag of bean sprouts',
  recipe_id: 1
})

Ingredient.create!({
  description: '3 stalks of green onion, finely chopped',
  recipe_id: 1
})

Ingredient.create!({
  description: '1 cup of chopped cilantro',
  recipe_id: 1
})

# Recipe 2 Ingredients 
Ingredient.create!({
  description: '1 lb uncooked spaghetti',
  recipe_id: 2
})

Ingredient.create!({
  description: '6 cloves of garlic, peeled and minced',
  recipe_id: 2
})

Ingredient.create!({
  description: '1/2 cup of olive oil',
  recipe_id: 2
})

Ingredient.create!({
  description: '1/2 tbsp of red pepper flakes',
  recipe_id: 2
})

Ingredient.create!({
  description: '1/2 tsp of salt',
  recipe_id: 2
})

Ingredient.create!({
  description: '1/2 tsp of ground black pepper',
  recipe_id: 2
})

Ingredient.create!({
  description: '1/2 cup of finely chopped italian parsley',
  recipe_id: 2
})

Ingredient.create!({
  description: '1 cup of grated Parmigiano-Regianno cheese',
  recipe_id: 2
})

# Recipe 3 ingredients 
Ingredient.create!({
  description: '1 pack of active dry yeast',
  recipe_id: 3
})

Ingredient.create!({
  description: '1 tbsp of vanilla extract',
  recipe_id: 3
})

Ingredient.create!({
  description: '1/3 cup of water',
  recipe_id: 3
})

Ingredient.create!({
  description: '8 cups of all-purpose flour',
  recipe_id: 3
})

Ingredient.create!({
  description: '6 large eggs, beaten',
  recipe_id: 3
})

Ingredient.create!({
  description: '1/2 cup of butter, melted',
  recipe_id: 3
})

Ingredient.create!({
  description: '3 cups of milk',
  recipe_id: 3
})

Ingredient.create!({
  description: '1/2 cup of sugar for the dough, more for coating',
  recipe_id: 3
})

Ingredient.create!({
  description: 'Enough oil to deep fry',
  recipe_id: 3
})

Ingredient.create!({
  description: 'Pinch of salt',
  recipe_id: 3
})

# Recipe 4 Ingredient
Ingredient.create!({
  description: '1 can of grape leaves',
  recipe_id: 4
})

Ingredient.create!({
  description: '2 large onions, minced',
  recipe_id: 4
})

Ingredient.create!({
  description: '3 cups of uncooked rice',
  recipe_id: 4
})

Ingredient.create!({
  description: '2 cloves of garlic, minced',
  recipe_id: 4
})

Ingredient.create!({
  description: '2 whole lemons, juiced',
  recipe_id: 4
})

Ingredient.create!({
  description: '1 cup of olive oil',
  recipe_id: 4
})

Ingredient.create!({
  description: '1 1/2 tbsp of cilantro, minced',
  recipe_id: 4
})

Ingredient.create!({
  description: '1 1/2 tbsp of mint, minced',
  recipe_id: 4
})

Ingredient.create!({
  description: '5 stalks of green onion. chopped fine',
  recipe_id: 4
})

Ingredient.create!({
  description: '1 tbsp of ground black pepper',
  recipe_id: 4
})

Ingredient.create!({
  description: '1 tbsp of salt. more to taste',
  recipe_id: 4
})

# Recipe 5 ingredients
Ingredient.create!({
  description: '6 small beets, peeled and grated',
  recipe_id: 5
})

Ingredient.create!({
  description: '4 tbsp of olive oil',
  recipe_id: 5
})

Ingredient.create!({
  description: '6 cups of chicken broth',
  recipe_id: 5
})

Ingredient.create!({
  description: '1 cup of water',
  recipe_id: 5
})

Ingredient.create!({
  description: '2 medium potatoes, peeled and diced',
  recipe_id: 5
})

Ingredient.create!({
  description: '2 small carrots, peeled and diced',
  recipe_id: 5
})

Ingredient.create!({
  description: '1 medium leek, chopped fine',
  recipe_id: 5
})

Ingredient.create!({
  description: '1 rib of celery, diced',
  recipe_id: 5
})

Ingredient.create!({
  description: '1 medium onion, diced',
  recipe_id: 5
})

Ingredient.create!({
  description: '1 can of stewed tomatoes',
  recipe_id: 5
})

Ingredient.create!({
  description: '3 tbsp of chopped dill',
  recipe_id: 5
})

Ingredient.create!({
  description: 'Sour cream for topping',
  recipe_id: 5
})
# Recipe 6 ingredients
Ingredient.create!({
  description: '3 large tomatoes, sliced into 1/4 inch slices',
  recipe_id: 6
})

Ingredient.create!({
  description: '1 lb of mozzarella, sliced into 1/4 inch slices',
  recipe_id: 6
})

Ingredient.create!({
  description: '1 bunch of basil',
  recipe_id: 6
})

Ingredient.create!({
  description: '1/2 cup for drizzling',
  recipe_id: 6
})

Ingredient.create!({
  description: 'Coarse salt, add to taste',
  recipe_id: 6
})

Ingredient.create!({
  description: 'Coarsely ground black pepper, add to taste',
  recipe_id: 6
})

# Recipe 7 ingredients
Ingredient.create!({
  description: '2 large eggplants, sliced into thin rounds',
  recipe_id: 7
})

Ingredient.create!({
  description: '5 large tomatoes. sliced into thin rounds, 2 small tomatoes kept whole',
  recipe_id: 7
})

Ingredient.create!({
  description: '2 yellow squashes, sliced into thin rounds',
  recipe_id: 7
})

Ingredient.create!({
  description: '2 large zucchinis, sliced into thin rounds',
  recipe_id: 7
})

Ingredient.create!({
  description: '3 red bell peppers, diced' ,
  recipe_id: 7
})

Ingredient.create!({
  description: '1/2 tsp of dried parsley',
  recipe_id: 7
})

Ingredient.create!({
  description: '1/2 tsp of dried thyme',
  recipe_id: 7
})

Ingredient.create!({
  description: '1 small onion, diced',
  recipe_id: 7
})

Ingredient.create!({
  description: '1 cup of veggie stock',
  recipe_id: 7
})

Ingredient.create!({
  description: '1/2 cup of olive oil, more for drizzling',
  recipe_id: 7
})

# Recipe 8 ingredients 
Ingredient.create!({
  description: '4 large potatoes, peeled and diced into large chunks',
  recipe_id: 8
})

Ingredient.create!({
  description: '1/2 lb pork loin, chopped into small pieces',
  recipe_id: 8
})

Ingredient.create!({
  description: '1 large white onion, diced',
  recipe_id: 8
})

Ingredient.create!({
  description: '1 yellow bell pepper, de-seeded and sliced into chunks',
  recipe_id: 8
})

Ingredient.create!({
  description: '1 tomato cut into eight sections',
  recipe_id: 8
})

Ingredient.create!({
  description: '2 stalks of green onion. chopped finely',
  recipe_id: 8
})

Ingredient.create!({
  description: 'One sprig of rosemary',
  recipe_id: 8
})

# Recipe 9 ingredients
Ingredient.create!({
  description: '1 lb of fresh flat rice noodles',
  recipe_id: 9
})

Ingredient.create!({
  description: '2 cloves of garlic, finely diced',
  recipe_id: 9
})

Ingredient.create!({
  description: '2 eggs, scrambled',
  recipe_id: 9
})

Ingredient.create!({
  description: '1/2 lb of beef, cut into thin strips',
  recipe_id: 9
})

Ingredient.create!({
  description: '1/2 cup of chinese broccoli, halved vertically and cut into logs',
  recipe_id: 9
})

Ingredient.create!({
  description: '1/3 cup of dark soy sauce',
  recipe_id: 9
})

Ingredient.create!({
  description: '1/4 cup of oyster sauce',
  recipe_id: 9
})

Ingredient.create!({
  description: 'A pinch of sugar',
  recipe_id: 9
})

Ingredient.create!({
  description: 'Pinch of black pepper',
  recipe_id: 9
})

# Recipe 10 ingredients
Ingredient.create!({
  description: '12 oz of all-purpose flour',
  recipe_id: 10
})

Ingredient.create!({
  description: '2 sticks of cold butter, cubed',
  recipe_id: 10
})

Ingredient.create!({
  description: '2 tbsp of sugar for the dough, 3/4 cup for the filling',
  recipe_id: 10
})

Ingredient.create!({
  description: '1 tbsp of salt',
  recipe_id: 10
})

Ingredient.create!({
  description: '6 oz of ice cold water',
  recipe_id: 10
})

Ingredient.create!({
  description: '2 lb of baking apples, chopped into small chunks',
  recipe_id: 10
})

Ingredient.create!({
  description: '1/4 tsp of ground cinnamon',
  recipe_id: 10
})

Ingredient.create!({
  description: '1/4 tsp of allspice',
  recipe_id: 10
})

Ingredient.create!({
  description: '1/4 tsp of nutmeg',
  recipe_id: 10
})

Ingredient.create!({
  description: '1 egg, beaten',
  recipe_id: 10
})

# Recipe 11 Ingredients
Ingredient.create!({
  description: '4 large egg yolks',
  recipe_id: 11
})

Ingredient.create!({
  description: '1/2 cup sugar',
  recipe_id: 11
})

Ingredient.create!({
  description: '3/4 cup heavy cream',
  recipe_id: 11
})

Ingredient.create!({
  description: '1 cup marscapone cheese',
  recipe_id: 11
})

Ingredient.create!({
  description: '1 1/2 cup espresso',
  recipe_id: 11
})

Ingredient.create!({
  description: '2 tablespoons cocoa powder',
  recipe_id: 11
})

Ingredient.create!({
  description: '1 package lady fingers',
  recipe_id: 11
})

#Recipe 12 Ingredients
Ingredient.create!({
  description: '3 cups all purpose flour',
  recipe_id: 12
})

Ingredient.create!({
  description: '1 cup butter, softened',
  recipe_id: 12
})

Ingredient.create!({
  description: '1 cup white sugar',
  recipe_id: 12
})

Ingredient.create!({
  description: '2 eggs',
  recipe_id: 12
})

Ingredient.create!({
  description: '2 teaspoons vanilla extract',
  recipe_id: 12
})

Ingredient.create!({
  description: '1 cup brown sugar',
  recipe_id: 12
})

Ingredient.create!({
  description: '2 cups semisweet chocolate chips',
  recipe_id: 12
})

#Recipe 13 Ingredients 
Ingredient.create!({
  description: '6 large apricots, peeled and pitted',
  recipe_id: 13
})

Ingredient.create!({
  description: '3 cups white sugar',
  recipe_id: 13
})

#Recipe 14 Ingredients
Ingredient.create!({
  description: '1 medium beet, peeled and cubed',
  recipe_id: 14
})

Ingredient.create!({
  description: '1/3 cup slivered almonds',
  recipe_id: 14
})

Ingredient.create!({
  description: '1 cup baby spinach',
  recipe_id: 14
})

Ingredient.create!({
  description: '1 cup arugula',
  recipe_id: 14
})

Ingredient.create!({
  description: '2 tablespoons apple cider vinegar',
  recipe_id: 14
})

Ingredient.create!({
  description: '1 tablespoon lime juice',
  recipe_id: 14
})

Ingredient.create!({
  description: '2 tablespoons olive oil',
  recipe_id: 14
})

Ingredient.create!({
  description: '1 tablespoon honey',
  recipe_id: 14
})

Ingredient.create!({
  description: '1/2 teaspoon salt',
  recipe_id: 14
})

Ingredient.create!({
  description: '1/2 teaspoon ground black pepper',
  recipe_id: 14
})

#Recipe 15 Ingredients 
Ingredient.create!({
  description: '6 chicken thighs',
  recipe_id: 15
})

Ingredient.create!({
  description: '6 chicken drumsticks',
  recipe_id: 15
})

Ingredient.create!({
  description: '3 cups buttermilk',
  recipe_id: 15
})

Ingredient.create!({
  description: '2 teaspoons salt',
  recipe_id: 15
})

Ingredient.create!({
  description: '1 teaspoon ground black pepper',
  recipe_id: 15
})

Ingredient.create!({
  description: '3 cups all purpose flour',
  recipe_id: 15
})

Ingredient.create!({
  description: '1/2 cup cornstarch',
  recipe_id: 15
})

Ingredient.create!({
  description: '2 teaspoons onion powder',
  recipe_id: 15
})

Ingredient.create!({
  description: '2 teaspoons garlic powder',
  recipe_id: 15
})

Ingredient.create!({
  description: '1 teaspoon dried oregano',
  recipe_id: 15
})

Ingredient.create!({
  description: '1 teaspoon cayenne pepper',
  recipe_id: 15
})

Ingredient.create!({
  description: 'Enough oil to deep fry',
  recipe_id: 15
})

#Recipe 16 Ingredients
Ingredient.create!({
  description: '5 ounces dried rice noodles',
  recipe_id: 16
})

Ingredient.create!({
  description: '10 jumbo shrimp',
  recipe_id: 16
})

Ingredient.create!({
  description: '10 round rice papper wrappers',
  recipe_id: 16
})

Ingredient.create!({
  description: '10 lettuce leaves',
  recipe_id: 16
})

Ingredient.create!({
  description: '1 cup bean sprouts',
  recipe_id: 16
})

Ingredient.create!({
  description: '1/2 cup mint leaves',
  recipe_id: 16
})

Ingredient.create!({
  description: '1/2 cup cilantro leaves',
  recipe_id: 16
})

# Recipe 17 Ingredients
Ingredient.create!({
  description: '1 pound ground pork',
  recipe_id: 17
})

Ingredient.create!({
  description: '1 cup wood ear mushrooms, rehydrated',
  recipe_id: 17
})

Ingredient.create!({
  description: '1 cup green onions, minced',
  recipe_id: 17
})

Ingredient.create!({
  description: '1 cup cilantro, minced',
  recipe_id: 17
})

Ingredient.create!({
  description: '2 cups shrimp, diced',
  recipe_id: 17
})

Ingredient.create!({
  description: '1/2 cup soy sauce',
  recipe_id: 17
})

Ingredient.create!({
  description: '1/2 cup oyster sauce',
  recipe_id: 17
})

Ingredient.create!({
  description: '1/2 tablespoon salt',
  recipe_id: 17
})

Ingredient.create!({
  description: '1/2 tablespoon black pepper',
  recipe_id: 17
})

Ingredient.create!({
  description: '1/2 tablespoon white pepper',
  recipe_id: 17
})

Ingredient.create!({
  description: '1 pack of premade wonton wrappers',
  recipe_id: 17
})

# Recipe 18 Ingredients
Ingredient.create!({
  description: '2 cups sugar',
  recipe_id: 18
})

Ingredient.create!({
  description: '1 cup butter, softened',
  recipe_id: 18
})

Ingredient.create!({
  description: '2 large eggs',
  recipe_id: 18
})

Ingredient.create!({
  description: '2 teaspoons vanilla extract',
  recipe_id: 18
})

Ingredient.create!({
  description: '3 cups all purpose flour',
  recipe_id: 18
})

Ingredient.create!({
  description: '1 teaspoon cream of tartar',
  recipe_id: 18
})

Ingredient.create!({
  description: '1/2 teaspoon baking soda',
  recipe_id: 18
})

Ingredient.create!({
  description: '1 teaspoon salt',
  recipe_id: 18
})

Ingredient.create!({
  description: '1 1/2 tablespoons cinnamon',
  recipe_id: 18
})

# Recipe 19 Ingredients
Ingredient.create!({
  description: '1 5 pound prime rib roast',
  recipe_id: 19
})

Ingredient.create!({
  description: '2 tablespoons salt',
  recipe_id: 19
})

Ingredient.create!({
  description: '2 tablespoons black pepper',
  recipe_id: 19
})

Ingredient.create!({
  description: '1 bunch fresh rosemary',
  recipe_id: 19
})

# Recipe 20 Ingredients
Ingredient.create!({
  description: '3 cups all purpose flour',
  recipe_id: 20
})

Ingredient.create!({
  description: '2 tablespoons kansui OR 1 tablespoon of baked baking soda',
  recipe_id: 20
})

Ingredient.create!({
  description: '1 cup water',
  recipe_id: 20
})

Ingredient.create!({
  description: '1 tablespoon salt',
  recipe_id: 20
})

# Steps #########################################
# Recipe 1 steps
Step.create!({
  description: 'Add the bones into a pot of water and cover the pot with enough water to cover all the bones. Put the pot on a stove bring it to a boil and let it boil for 30 minutes.',
  recipe_order: 1,
  recipe_id: 1
})

Step.create!({
  description: 'While the bones are blanching, toast the garlic, ginger, and halved onions in the oven. Lightly toast the cinnamon sticks, star anise, and peppercorns in a pan on low heat until they are fragrant.',
  recipe_order: 2,
  recipe_id: 1
})

Step.create!({
  description: 'After the bones have been boiled for 30 minutes, drain the water and clean the bones with running water. Wash and rinse them thoroughly.',
  recipe_order: 3,
  recipe_id: 1
})

Step.create!({
  description: 'Add the cleaned bones, brisket, toasted ginger, garlic, onions, and spices into a pot and add enough water to cover everything. Bring the pot to a boil.',
  recipe_order: 4,
  recipe_id: 1
})

Step.create!({
  description: 'Once boiling, set the heat to low and let the pot simmer for the next 3 - 4 hours. Occasionally, skim the scum off the top of the broth and check on the brisket inside. If the brisket is fork tender, remove it and set it aside to cool. When it has reached room temperature, place the brisket into the fridge until you are ready to serve.',
  recipe_order: 5,
  recipe_id: 1
})

Step.create!({
  description: 'After 3-4 hours, strain all the soup into another pot and bring the strained broth back to a boil. Season the broth with fish sauce and salt.',
  recipe_order: 6,
  recipe_id: 1
})

Step.create!({
  description: 'Cook the noodles in accordance to the packaging instructions. When cooked, strain the noodles from the pot and add some noodles to a bowl. Take the chilled brisket and slice it into 1/4 inch slices. Top the noodles with the slices of brisket, raw sliced beef, bean sprouts, green onions, cilantro, and julienned onions',
  recipe_order: 7,
  recipe_id: 1
})

Step.create!({
  description: 'Pour the boiling hot broth on top of the noodles with toppings and watch the raw beef get cooked as the boiling hot broth hits it. Enjoy!',
  recipe_order: 8,
  recipe_id: 1
})

# Recipe 2 steps
Step.create!({
  description: 'Get a pot of water and bring it to a boil. When boiling, salt the water and add the spaghetti noodles into the salted water, Cook the pasta until slightly before fully cooked, as they will finish cooking in the pan later. Save about 1/4 cup of the water that was used to cook the pasta.',
  recipe_order: 1,
  recipe_id: 2
})

Step.create!({
  description: 'Add olive oil to a pan and put the pan on a medium heat. Add the garlic to the pan and allow them to brown slowly.',
  recipe_order: 2,
  recipe_id: 2
})

Step.create!({
  description: 'Once the garlic is golden brown, add the red pepper flakes and mix the garlic oil mixture well. Stir until the mixture is fragrant with spice.',
  recipe_order: 3,
  recipe_id: 2
})

Step.create!({
  description: 'When fragrant, add the boiled pasta to the pan along with the saved pasta water. Mix everything together well and let cook for about two minutes, depending on the texture of spaghetti you enjoy.',
  recipe_order: 4,
  recipe_id: 2
})

Step.create!({
  description: 'When the pasta is finished cooking, turn off the heat. Add the parsley to the pan and mix everything well. Transfer it all to a plate.',
  recipe_order: 5,
  recipe_id: 2
})

Step.create!({
  description: 'Top the pasta with the cheese. Mix well and serve.',
  recipe_order: 6,
  recipe_id: 2
})

# Recipe 3 steps
Step.create!({
  description: 'Use about 1 tbsp of sugar and mix the yeast in the water with the sugar.',
  recipe_order: 1,
  recipe_id: 3
})

Step.create!({
  description: 'Using a stand mixer, add all the dry ingredients into the bowl. This would be the flour, remaining amount of sugar, and salt. Mix everything together for about 30 seconds.',
  recipe_order: 2,
  recipe_id: 3
})

Step.create!({
  description: 'Add the butter, milk, eggs, vanilla extract, and yeast mixture into the bowl and mix until it forms a smooth dough.',
  recipe_order: 3,
  recipe_id: 3
})

Step.create!({
  description: 'Cover and leave the dough in a slightly warm place until the dough has doubled in size. This will take about an hour, but depends on the location, humidity, and ambient temperature.',
  recipe_order: 4,
  recipe_id: 3
})

Step.create!({
  description: "Once doubled, bring a pot of oil to 350°F. Portion out the dough until each are about 12 oz's each. Carefully flatten the dough portions into discs, and try not to knock all the air bubbles out that were formed during the rising process.",
  recipe_order: 5,
  recipe_id: 3
})

Step.create!({
  description: 'Once the oil is up to temp, carefully add the dough discs into the oil and cook until the bottom side is brown. Once browned on one side, use a pair of tongs to flip the dough discs onto the other sides. Continue cooking util fully browned.',
  recipe_order: 6,
  recipe_id: 3
})

Step.create!({
  description: 'When the desired color is reached, remove the malasadas from the oil and allow them to cool on a paper towel. While they are fresh out of the oil, sprinkle the malasadas with the remainder of the sugar. Let them cool and enjoy.',
  recipe_order: 7,
  recipe_id: 3
})

# Recipe 4 steps
Step.create!({
  description: 'Start by preparing the leaves by draining the liquid from the can and removing the stems from each individual leaf. Lay out the leaves flat and stack them on top of one another on a plate.',
  recipe_order: 1,
  recipe_id: 4
})

Step.create!({
  description: 'Take the rice and wash it thoroughly. In a skillet, add some olive oil and the chopped onions. Cook the onions until they become slightly translucent.',
  recipe_order: 2,
  recipe_id: 4
})

Step.create!({
  description: 'Add the rice to the skillet and cook the rice slightly for about a minute. Once done, remove all of the contents of the pan and transfer to a bowl',
  recipe_order: 3,
  recipe_id: 4
})

Step.create!({
  description: 'To the bowl of rice and onions, add the mint, cilantro, and green onions. Mix this well and prepare to use this to stuff the grape leaves.',
  recipe_order: 4,
  recipe_id: 4
})

Step.create!({
  description: 'With the filling ready, take a grape leaf and place it on a flat surface. Add about a tablespoon of the rice filling to the stem part of the leaf. Roll the leaf and filling, tucking in the sides as you roll it towards the tip of the leaf.',
  recipe_order: 5,
  recipe_id: 4
})

Step.create!({
  description: 'Take the stuffed grape leaves and begin to layer them in a pot. Place the stuffed grape leaves fold side down to prevent them from unfolding while cooking. Make sure they are packed tight next to one another. Layer the dolamdes on top of one another if needed. ',
  recipe_order: 6,
  recipe_id: 4
})

Step.create!({
  description: 'Add the lemon juice, salt, pepper, and the rest of the olive oil to the pot. Add enough water to barely cover the dolmades and bring the pot to a boil. Once boiling, simmer for 30 minutes.',
  recipe_order: 7,
  recipe_id: 4
})

Step.create!({
  description: 'After 30 minutes, turn the heat off and allow the pot to cool slightly. Once cooled, remove the dolmades from the pot and serve. These dolmades can be either served hot or cold.',
  recipe_order: 8,
  recipe_id: 4
})

# Recipe 5 steps
Step.create!({
  description: 'In a pot, heat the olive oil over medium heat. Add the leeks, celery, and onion. Add some salt and slowly cook these vegetables down for about 6 minutes or until the onions become slighlty translucent.',
  recipe_order: 1,
  recipe_id: 5
})

Step.create!({
  description: 'Add the water, chicken broth, and beets after the vegetables have been cooked. Bring the pot to a boil and let it simmer for 30 minutes, or until the beets are fork tender.',
  recipe_order: 2,
  recipe_id: 5
})

Step.create!({
  description: 'Once the beets are tender, add the potatoes and carrots. Cook until both the potatoes and carrots are tender as well.',
  recipe_order: 3,
  recipe_id: 5
})

Step.create!({
  description: 'Add the tomatoes and simmer for another 10 minutes. Once 10 minutes have passed, turn the stove off and mix in some of the dill. When serving, add sour cream and more dill on top.',
  recipe_order: 4,
  recipe_id: 5
})

# Recipe 6 steps
Step.create!({
  description: 'Make sure all your ingredients are prepared and sliced',
  recipe_order: 1,
  recipe_id: 6
})

Step.create!({
  description: 'Begin by layering your tomatoes, mozzarella, and basil onto a plate on top of one another in that order. Make sure to layer them across your plate.',
  recipe_order: 2,
  recipe_id: 6
})

Step.create!({
  description: 'Drizzle the olive oil over top. Add the salt and pepper and enjoy.',
  recipe_order: 3,
  recipe_id: 6
})

# Recipe 7 steps 
Step.create!({
  description: 'Turn on your oven to preheat it to 375°F.',
  recipe_order: 1,
  recipe_id: 7
})

Step.create!({
  description: 'In a blender, add your whole tomatoes and diced bell peppers, parsley, thyme, onion, garlic, olive oil, and vegetable stock. Blend on high power until the resulting mixture is smooth.',
  recipe_order: 2,
  recipe_id: 7
})

Step.create!({
  description: 'In a large baking dish, add the sauce you just made as a thin layer on the bottom. In an alternating pattern, layer your vegetables closely, one on top of the other and across the entirety of the baking dish',
  recipe_order: 3,
  recipe_id: 7
})

Step.create!({
  description: 'Drizzle some olive oil over the arranged vegetables. Cut a piece of parchment paper in the shape of your baking dish to cover the vegetables and place it into the preheated oven for 1 hour.',
  recipe_order: 4,
  recipe_id: 7
})

Step.create!({
  description: 'Remove from the oven and serve hot.',
  recipe_order: 5,
  recipe_id: 7
})

# Recipe 8 steps
Step.create!({
  description: 'In a deep pan skillet, heat some oil over low heat and put your potatoes in. Slowly cook them until fork tender',
  recipe_order: 1,
  recipe_id: 8
})

Step.create!({
  description: 'After the potatoes are tender and golden brown, remove them from the skillet and set aside. Clean the skillet and bring it back onto the stove over medium high heat. Add your pork to the skillet and cook it until the pork becomes golden brown.',
  recipe_order: 2,
  recipe_id: 8
})

Step.create!({
  description: 'When the pork is fully cooked, remove the pork and keep the grease. Set the pork aside on a paper towel to drain.',
  recipe_order: 3,
  recipe_id: 8
})

Step.create!({
  description: 'With the pork removed, add your white onion and bell pepper back into the same skillet and set the heat to low. Slowly cook the veggies until the onions become slightly translucent. Once ready, add your potatoes into the skillet.',
  recipe_order: 4,
  recipe_id: 8
})

Step.create!({
  description: 'Add the pork and the tomatoes back to the skillet to heat back up. Mix everything well to ensure that all ingredients are thoroughly spread out.',
  recipe_order: 5,
  recipe_id: 8
})

Step.create!({
  description: 'Turn off the heat after about two minutes. Carefully add your rosemary and your green onions and serve the dish in the skillet itself.',
  recipe_order: 6,
  recipe_id: 8
})

# Recipe 9 steps
Step.create!({
  description: 'In a bowl, mix the oyster sauce, soy sauce, sugar, and black pepper. Set aside for later use.',
  recipe_order: 1,
  recipe_id: 9
})

Step.create!({
  description: 'In a pan or wok, heat up some oil, but don"t allow it to begin smoking. If it does, take the pan off the heat and start over. Add your garlic and cook them slightly.',
  recipe_order: 2,
  recipe_id: 9
})

Step.create!({
  description: 'Add the beef and chinese broccoli and cook them until the beef has changed to a light brown color.',
  recipe_order: 3,
  recipe_id: 9
})

Step.create!({
  description: 'Add your eggs and allow it to cook. Try not to mix, cook, or agitate the eggs too much. Once the edge of egg mixture has set while the middle is still runny, add your rice noodles.',
  recipe_order: 4,
  recipe_id: 9
})

Step.create!({
  description: 'Toss everything together, making sure that everything is evenly mixed. Once ready, add your sauce and mix well. Continue to cook for about a minute, or until the noodles are to the texture of your preference.',
  recipe_order: 5,
  recipe_id: 9
})

Step.create!({
  description: 'Plate the noodles on a dish and serve.',
  recipe_order: 6,
  recipe_id: 9
})

# Recipe 10 steps
Step.create!({
  description: 'Add your flour. salt, and 2 tbsps of sugar to a food processor. Mix and combine well.',
  recipe_order: 1,
  recipe_id: 10
})

Step.create!({
  description: 'Add all of your cold butter and mix slowly until the mixture begins to looks crumbly, yet sticks together when pressed firmly.',
  recipe_order: 2,
  recipe_id: 10
})

Step.create!({
  description: 'Add your ice water to the food processor and mix well until a dough forms.',
  recipe_order: 3,
  recipe_id: 10
})

Step.create!({
  description: 'Take your dough out of the food processor and shape it into a flat disc. Wrap the dough in plastic wrap and place it in a fridge to cool for 2 hours.',
  recipe_order: 4,
  recipe_id: 10
})

Step.create!({
  description: 'While the dough is chilling, prepare the filling by mixing your chopped apples, nutmeg, allspice, and cinnamon together.',
  recipe_order: 5,
  recipe_id: 10
})

Step.create!({
  description: 'After 2 hours, preheat your oven to 475°F',
  recipe_order: 6,
  recipe_id: 10
})

Step.create!({
  description: 'Take your dough out of the fridge and dust it liberally with flour. Seperate the dough into two equal pieces.',
  recipe_order: 7,
  recipe_id: 10
})

Step.create!({
  description: 'Take one piece of dough and roll it out flat and wider than your pie tin. When ready, carefully place your flattened dough into  your pie tin, pressing the dough into the pie tins ridges and cutting off the excess.',
  recipe_order: 8,
  recipe_id: 10
})

Step.create!({
  description: 'Prepare the top of the pie by flattening the other piece of dough into a rectangular shape. Cut this plane of dough into one inch strips and set aside.',
  recipe_order: 9,
  recipe_id: 10
})

Step.create!({
  description: 'Add your apple filling to your pie tin dough and take your dough strips and place them on top of the apples in an interlaced pattern.',
  recipe_order: 10,
  recipe_id: 10
})

Step.create!({
  description: 'Brush the top of your pie with the egg and carefully place it into the oven.',
  recipe_order: 11,
  recipe_id: 10
})

Step.create!({
  description: 'After 10 minutes, lower the heat to 400°F and bake for another 30 minutes.',
  recipe_order: 12,
  recipe_id: 10
})

Step.create!({
  description: 'Let cool for at least 2 hours. When cool, cut and serve.',
  recipe_order: 13,
  recipe_id: 10
})

# Recipe 11 Steps
Step.create!({
  description: 'Using an electric mixer, whip the egg yolks and half of the sugar together until they form ribbons when lifted off the bowl. Transfer this mexture to a large bowl.',
  recipe_order: 1,
  recipe_id: 11
})

Step.create!({
  description: 'In the electric mixer with a clean bowl, whip the cream and remaining sugar together until it forms soft peaks. Once formed, add the mascarpone and whip until it creates peaks once more. Once complete, fold this mixture into the egg mixture created from before.',
  recipe_order: 2,
  recipe_id: 11
})

Step.create!({
  description: 'Use a sifter and dust the bottom of a baking dish with the cocoa powder',
  recipe_order: 3,
  recipe_id: 11
})

Step.create!({
  description: 'Pour your espresso into a shallow bowl. Quickly dip your ladyfingers into the espresso and place them into one layer onto the baking dish. Make sure to fill as much space as possible.',
  recipe_order: 4,
  recipe_id: 11
})

Step.create!({
  description: 'Spread half of your mascarpone mixture on top of the lady fingers and spread evenly. Repeat this layering process as many times as needed in order to use all of the mascarpone and ladyfingers.',
  recipe_order: 5,
  recipe_id: 11
})

Step.create!({
  description: 'Dust the final layer with the remainder of your cocoa powder and wrap with plastic wrap. Place into the fridge and allow it to chill for at least 4 hours (the longer the better) before serving.',
  recipe_order: 6,
  recipe_id: 11
})

# Recipe 12 Steps
Step.create!({
  description: 'Preheat oven to 350°F',
  recipe_order: 1,
  recipe_id: 12
})

Step.create!({
  description: 'Cream your butter with the white and brown sugar until smooth.',
  recipe_order: 2,
  recipe_id: 12
})

Step.create!({
  description: 'Beat in eggs one at a time and stir in the vanilla and chocolate chips.',
  recipe_order: 3,
  recipe_id: 12
})

Step.create!({
  description: 'Place spoonfuls of cookie dough onto a greased or lined baking sheet.',
  recipe_order: 4,
  recipe_id: 12
})

Step.create!({
  description: 'Bake for about 10 minutes, or until the edges are browned.',
  recipe_order: 5,
  recipe_id: 12
})

Step.create!({
  description: 'Remove from oven and allow cookies to rest for 15 minutes.',
  recipe_order: 6,
  recipe_id: 12
})

# Recipe 13 Steps
Step.create!({
  description: 'Blend your apricots into a smooth paste. Once blended, use a fine mesh strainer and strain the blended apricots.',
  recipe_order: 1,
  recipe_id: 13
})

Step.create!({
  description: 'In a pot, mix your blended apricots and sugar together. Place the pot onto a stovetop over medium low heat and begin to stir the mixture.',
  recipe_order: 2,
  recipe_id: 13
})

Step.create!({
  description: 'Continue to stir the apricot mixture until it begins to thicken. You can check the thickness of the mixture by placing some onto the back of a spoon and streaking something through. If the mixture does not want form back together, then it is done.',
  recipe_order: 3,
  recipe_id: 13
})

Step.create!({
  description: 'Pour your newly formed jam into a jar and allow to cool. Enjoy on toast!',
  recipe_order: 4,
  recipe_id: 13
})

# Recipe 14 Steps 
Step.create!({
  description: 'Prepare the vinaigrette by mixing the apple cider vinegar, lime juice, olive oil, honey, salt, and ground black pepper together.',
  recipe_order: 1,
  recipe_id: 14
})

Step.create!({
  description: 'Slightly toast the almonds by putting the almonds in a small skillet over low heat and stirring the almonds frequently until golden brown.',
  recipe_order: 2,
  recipe_id: 14
})

Step.create!({
  description: 'Add your beets, spinach, and arugula to a large mixing bowl. Toss everything together and then add the vinaigrette. Mix well and top with the almonds.',
  recipe_order: 3,
  recipe_id: 14
})

# Recipe 15 Steps
Step.create!({
  description: 'In a large mixing bowl, whisk together the buttermilk, salt, and black pepper together. Place your chicken thighs and drumsticks into the bowl and cover the bowl with plastic wrap. Refrigerate for at least 4 hours.',
  recipe_order: 1,
  recipe_id: 15
})

Step.create!({
  description: 'Mix the flour with your onion powder, garlic powder, dried oregano, and cayenne pepper.',
  recipe_order: 2,
  recipe_id: 15
})

Step.create!({
  description: 'After the chicken marinated in your buttermilk, bring a pot of oil to 350°F and remove them from the buttermilk, shaking off the excess each time.',
  recipe_order: 3,
  recipe_id: 15
})

Step.create!({
  description: 'Working with one piece at a time, place the chicken into the flour mixture and tap away the excess coating.',
  recipe_order: 4,
  recipe_id: 15
})

Step.create!({
  description: 'When your oil is at 350°F, carefully place your breaded chicken in one at a time. Try not to fry too many pieces at once, as this will drop the temperature of your oil and cause cooking times to be longer. Fry each piece for about 15 minutes each, ensuring that each piece reaches 165°F internally.',
  recipe_order: 5,
  recipe_id: 15
})

Step.create!({
  description: 'Once golden brown and cooked, place onto paper towels or on a rack to drain off excess oil. Let rest and cool for at least 10 minutes before serving.',
  recipe_order: 6,
  recipe_id: 15
})

# Recipe 16 Steps
Step.create!({
  description: 'In a pot, bring a large amount of hot water to a boil. Once at a boil, cook your rice noodles according to the package. Once cooked, drain the water and rinse the noodles with cold water to stop them from cooking.',
  recipe_order: 1,
  recipe_id: 16
})

Step.create!({
  description: 'In another pot of boiling water, cook your shrimp. Once cooked, place the shrimps in ice water to stop the cooking process. Butterfly each of the shrimps.',
  recipe_order: 2,
  recipe_id: 16
})

Step.create!({
  description: 'In a dish large enough to fit the rice paper, add cool water to fill it.',
  recipe_order: 3,
  recipe_id: 16
})

Step.create!({
  description: 'Take a sheet of rice paper and dip it into the cold water. Leave it in the water for about 5 seconds. As you continue to work with the other toppings, the rice paper will soften even more.',
  recipe_order: 4,
  recipe_id: 16
})

Step.create!({
  description: 'Lay your wet rice paper on a flat surface. Add a lettuce leaf over the bottom of the rice paper. Place some rice noodles and bean sprouts on top.',
  recipe_order: 5,
  recipe_id: 16
})

Step.create!({
  description: 'Roll the rice paper up halfway, folding in the sides as you go up.',
  recipe_order: 6,
  recipe_id: 16
})

Step.create!({
  description: 'At the crease, place 2 shrimp halves down. Add some mint and cilantro as well and continue to roll the spring roll tight.',
  recipe_order: 7,
  recipe_id: 16
})

Step.create!({
  description: 'Serve with peanut sauce.',
  recipe_order: 8,
  recipe_id: 16
})

# Recipe 17 Steps
Step.create!({
  description: 'Mince up your rehydrated wood ear mushrooms.',
  recipe_order: 1,
  recipe_id: 17
})

Step.create!({
  description: 'In a large mixing bowl, add all the ingredients together and mix well.',
  recipe_order: 2,
  recipe_id: 17
})

Step.create!({
  description: 'Open your pack of ready to use wonton wrappers. Using a teaspoon, place a bit of the meat mixture into the middle of the wrapper. Take all the sides together and scrunch them up into one point. Continue until filling or wrappers have been used up.',
  recipe_order: 3,
  recipe_id: 17
})

Step.create!({
  description: 'Bring a pot of water to a boil. Add the wontons made to the pot and cook. When they begin to float, they are ready to remove and serve hot. If you have too much, store some in the freezer in ziploc bags.',
  recipe_order: 4,
  recipe_id: 17
})

# Recipe 18 Steps
Step.create!({
  description: 'Preheat the oven to 350°F.',
  recipe_order: 1,
  recipe_id: 18
})

Step.create!({
  description: 'In a large mixing bowl, mix your butter and sugar together until the mixture becomes light and fluffy.  once ready, add your eggs and vanilla and mix for 2 more minutes.',
  recipe_order: 2,
  recipe_id: 18
})

Step.create!({
  description: 'Carefully mix in your flour, cream of tartar, baking soda, and salt until combined.',
  recipe_order: 3,
  recipe_id: 18
})

Step.create!({
  description: 'In a small bowl, mix your sugar and cinnamon together.',
  recipe_order: 4,
  recipe_id: 18
})

Step.create!({
  description: 'Using your hands, take small amounts of dough and roll them into balls. Coat each of these dough balls in your cinnamon sugar mixture and place them onto a parchment paper lined baking sheet.',
  recipe_order: 5,
  recipe_id: 18
})

Step.create!({
  description: 'When the oven reaches 350°F, place your baking sheet inside and bake for 9 - 10 minutes. Once cooked, remove from oven and let cool on the baking sheet for at least 15 minutes.',
  recipe_order: 6,
  recipe_id: 18
})

# Recipe 19 Steps
Step.create!({
  description: 'Remove the rib roast from its packaging and let it come to room temperature. This will take about 30 minutes. Preheat your oven to 450°F.',
  recipe_order: 1,
  recipe_id: 19
})

Step.create!({
  description: 'Pat the rib roast dry, then coat generously with your salt and pepper. Make sure to cover as much of the rib roast as possible.',
  recipe_order: 2,
  recipe_id: 19
})

Step.create!({
  description: 'Once the oven has come to temperature, place your rib roast on a large baking tray. If you have an oven safe thermometer, stick it into the center of the meat now. Else, place the rib roast in the oven.',
  recipe_order: 3,
  recipe_id: 19
})

Step.create!({
  description: 'After 30 minutes, drop the oven temperature from 450°F to 350°F and continue to cook for an hour and 30 minutes, or until your desired internal temperature is reached. Medium rare is at 110°, medium is at 120°, medium well at 130°F and well at 140°F.',
  recipe_order: 4,
  recipe_id: 19
})

Step.create!({
  description: 'Once the appropriate internal temperature has been reached, remove from the oven and add your rosemary on top. Cover with foil and let rest for at least 30 minutes.',
  recipe_order: 5,
  recipe_id: 19
})

Step.create!({
  description: 'Once enough time has passed, remove foil, carve, and serve.',
  recipe_order: 6,
  recipe_id: 19
})

# Recipe 20 Steps 
Step.create!({
  description: 'Mix your kansui or baked baking soda and salt into your water.',
  recipe_order: 1,
  recipe_id: 20
})

Step.create!({
  description: 'Add your water to your flour and mix well. Knead everything together. If after some kneading the flour does not want to clump up together, add water, but add only a little bit. This goal is to get a firm yet bouncy dough.',
  recipe_order: 2,
  recipe_id: 20
})

Step.create!({
  description: 'After your dough has been kneaded and all the flour has formed into one mass, cover with plastic wrap and let rest for at least 30 minutes.',
  recipe_order: 3,
  recipe_id: 20
})

Step.create!({
  description: 'After 30 minutes have passed, remove the dough from the bowl and portion out into 4 equal pieces. ',
  recipe_order: 4,
  recipe_id: 20
})

Step.create!({
  description: 'Take one piece and flatten it out as much as you can. If you have a dough roller and cutter, use that to flatten it out to your desired thickness and cut the noodles into individual strands.',
  recipe_order: 5,
  recipe_id: 20
})

Step.create!({
  description: 'If you do not own one, roll the dough out as thin as you can and dust the entire surface with more flour. Fold the dough upon itself, dusting the dough as you fold. Once folded, carefully cut individual strands of noodles out.',
  recipe_order: 6,
  recipe_id: 20
})

Step.create!({
  description: 'Once the noodles have been cut, dust with more flour to ensure no noodles stick to one another. Save these noodles in the freezer or boil them right away to eat.',
  recipe_order: 7,
  recipe_id: 20
})

# Reviews #######################################

Review.create!({
  body: 'I loved this pho recipe!',
  rating: 5,
  recipe_id: 1,
  user_id: 2,
})

Review.create!({
  body: "It didn't end up serving 6. I didn't use enough bones, but still.",
  rating: 2,
  recipe_id: 1,
  user_id: 3,
})

Review.create!({
  body: 'It was okay...',
  rating: 4,
  recipe_id: 1,
  user_id: 4,
})

Review.create!({
  body: "If you love garlic like I love beets, you will thoroughly enjoy this plate of pasta.",
  rating: 5,
  recipe_id: 2,
  user_id: 3,
})

Review.create!({
  body: 'It was too spicy!',
  rating: 1,
  recipe_id: 2,
  user_id: 6,
})

Review.create!({
  body: 'Simple yet packed with flavor.',
  rating: 5,
  recipe_id: 2,
  user_id: 4,
})

Review.create!({
  body: "The smell alone brought back memories of a vacation in Hawaii.",
  rating: 5,
  recipe_id: 3,
  user_id: 2,
})

Review.create!({
  body: 'Needed a beet filling.',
  rating: 3,
  recipe_id: 3,
  user_id: 3,
})

Review.create!({
  body: 'Tasty, but needed an extra smoky flavor.',
  rating: 4,
  recipe_id: 3,
  user_id: 6,
})

Review.create!({
  body: 'Perfection',
  rating: 5,
  recipe_id: 4,
  user_id: 5,
})

Review.create!({
  body: 'Was a bit too strong in herbs',
  rating: 3,
  recipe_id: 4,
  user_id: 2,
})

Review.create!({
  body: 'Tasty! They were delicious cold as well!',
  rating: 4,
  recipe_id: 4,
  user_id: 3,
})

Review.create!({
  body: 'Tasted okay',
  rating: 3,
  recipe_id: 5,
  user_id: 4,
})

Review.create!({
  body: 'Stained my fingers...',
  rating: 2,
  recipe_id: 5,
  user_id: 2,
})

Review.create!({
  body: 'Absolutely delicious',
  rating: 5,
  recipe_id: 5,
  user_id: 6,
})

Review.create!({
  body: 'Simple, yet each ingredient was not overpowered by another. Perfection.',
  rating: 5,
  recipe_id: 6,
  user_id: 4,
})

Review.create!({
  body: 'Needed more beets',
  rating: 4,
  recipe_id: 6,
  user_id: 3,
})

Review.create!({
  body: 'Delicious and easy to make',
  rating: 5,
  recipe_id: 6,
  user_id: 2,
})

Review.create!({
  body: "Made this for a party, everyone couldn't stop eating it",
  rating: 5,
  recipe_id: 7,
  user_id: 2,
})

Review.create!({
  body: "Take the time to arrange your vegetables carefully. This dish won't disappoint",
  rating: 5,
  recipe_id: 7,
  user_id: 5,
})

Review.create!({
  body: 'Even without my favorite vegetable, this was divine.',
  rating: 5,
  recipe_id: 7,
  user_id: 3,
})

Review.create!({
  body: 'Tasty. Easy. Simple.',
  rating: 4,
  recipe_id: 8,
  user_id: 6,
})

Review.create!({
  body: 'With the properly grown ingredients, this was amazing.',
  rating: 5,
  recipe_id: 8,
  user_id: 5,
})

Review.create!({
  body: "Could've used more herbs and flavorings. Slightly lacking.",
  rating: 2,
  recipe_id: 8,
  user_id: 4,
})

Review.create!({
  body: "Need some more sour notes to it",
  rating: 2,
  recipe_id: 9,
  user_id: 5,
})

Review.create!({
  body: "A wok gave a great smoky flavor, but the dish itself was slightly bland.",
  rating: 4,
  recipe_id: 9,
  user_id: 6,
})

Review.create!({
  body: 'Sweet, savory, simple. Delicious.',
  rating: 4,
  recipe_id: 9,
  user_id: 2,
})

Review.create!({
  body: 'An American classic',
  rating: 5,
  recipe_id: 10,
  user_id: 2,
})

Review.create!({
  body: 'Using fresh apples made this sweet yet slightly sour, but incredibly delicious!',
  rating: 4,
  recipe_id: 10,
  user_id: 5,
})

Review.create!({
  body: 'Made this in a cast iron skillet, came out great!',
  rating: 4,
  recipe_id: 10,
  user_id: 6,
})

Review.create!({
  body: 'Light, fluffy, and absolutely delicious!',
  rating: 5,
  recipe_id: 11,
  user_id: 2
})

Review.create!({
  body: 'Tasted incredible! Had to make this a second time.',
  rating: 5,
  recipe_id: 11,
  user_id: 7 
})

Review.create!({
  body: 'Make it red like beets to be even tastier.',
  rating: 4,
  recipe_id: 11,
  user_id: 3
})

Review.create!({
  body: 'Everything about this is simply delicious!',
  rating: 5,
  recipe_id: 11,
  user_id: 5
})

Review.create!({
  body: 'An incredibly light yet flavorful dessert to end any meal.',
  rating: 5,
  recipe_id: 11,
  user_id: 4
})

Review.create!({
  body: "Could've been a tiny bit sweeter.",
  rating: 3,
  recipe_id: 12,
  user_id: 6
})

Review.create!({
  body: 'Even without protein, this is delicious.',
  rating: 5,
  recipe_id: 12,
  user_id: 8
})

Review.create!({
  body: 'Maybe add some other toppings.',
  rating: 4,
  recipe_id: 12,
  user_id: 2
})

Review.create!({
  body: 'Tasty!',
  rating: 4,
  recipe_id: 12,
  user_id: 5
})

Review.create!({
  body: 'Sweet, simple, and great for storing!',
  rating: 5,
  recipe_id: 13,
  user_id: 1
})

Review.create!({
  body: 'Needed some sour notes, as it was slightly too sweet.',
  rating: 4,
  recipe_id: 13,
  user_id: 9
})

Review.create!({
  body: 'Delicious with fresh apricots!',
  rating: 5,
  recipe_id: 13,
  user_id: 5
})

Review.create!({
  body: 'Fresh picked apricots accentuate this even more.',
  rating: 4,
  recipe_id: 13,
  user_id: 6
})

Review.create!({
  body: 'Something was missing..., but still tasty!',
  rating: 4,
  recipe_id: 14,
  user_id: 2
})

Review.create!({
  body: 'Delicious! Would make again any day.',
  rating: 5,
  recipe_id: 14,
  user_id: 5
})

Review.create!({
  body: "Should've made beet jam instead.",
  rating: 3,
  recipe_id: 14,
  user_id: 7
})

Review.create!({
  body: 'Tasty, but needed something the raw beets may have been a bit too much.',
  rating: 4,
  recipe_id: 14,
  user_id: 4
})

Review.create!({
  body: 'Absolutely delicious! Could not stop eating it!',
  rating: 5,
  recipe_id: 15,
  user_id: 2
})

Review.create!({
  body: 'Better than what mom used to make! No beets needed!',
  rating: 5,
  recipe_id: 15,
  user_id: 3
})

Review.create!({
  body: 'Crispy and not dry on the insides! Amazing!',
  rating: 5,
  recipe_id: 15,
  user_id: 4
})

Review.create!({
  body: 'Could not stop myself from running to the store to buy ingredients and make this again!',
  rating: 5,
  recipe_id: 15,
  user_id: 5
})

Review.create!({
  body: 'Absolutely mouth-wateringly delicious.',
  rating: 5,
  recipe_id: 15,
  user_id: 6
})

Review.create!({
  body: 'Refreshing, springy, and a great way to start off any meal.',
  rating: 5,
  recipe_id: 16,
  user_id: 2
})

Review.create!({
  body: 'Ate 5 of these without even noticing how many I ate until the deed was done. Will do again.',
  rating: 5,
  recipe_id: 16,
  user_id: 8
})

Review.create!({
  body: 'Wish I made more. Absolutely addicting.',
  rating: 5,
  recipe_id: 16,
  user_id: 9
})

Review.create!({
  body: 'Just magnificent.',
  rating: 5,
  recipe_id: 17,
  user_id: 4
})

Review.create!({
  body: 'The wood ear mushrooms were a strange texture.',
  rating: 3,
  recipe_id: 17,
  user_id: 3
})

Review.create!({
  body: 'Could not be any more perfect.',
  rating: 5,
  recipe_id: 17,
  user_id: 2
})

Review.create!({
  body: 'Delicious!',
  rating: 5,
  recipe_id: 17,
  user_id: 1
})

Review.create!({
  body: 'A light and tasty cookie! ',
  rating: 4,
  recipe_id: 18,
  user_id: 2
})

Review.create!({
  body: 'The perfect amount of sweetness and the perfect amount of cinnamon.',
  rating: 5,
  recipe_id: 18,
  user_id: 3
})

Review.create!({
  body: 'The cream of tartar caused it to have an extremely bitter taste. Definitely not my fault.',
  rating: 3,
  recipe_id: 18,
  user_id: 8
})

Review.create!({
  body: 'Cooked to perfection. Strong on flavor. Make sure to use good quality prime rib!',
  rating: 5,
  recipe_id: 19,
  user_id: 2
})

Review.create!({
  body: 'Needs more garlic, but overall, tasty!',
  rating: 4,
  recipe_id: 19,
  user_id: 3
})

Review.create!({
  body: 'Could use more spices or herbs to accentuate the flavor of the meat.',
  rating: 3,
  recipe_id: 19,
  user_id: 4
})

Review.create!({
  body: 'Roasted it over a campfire instead, absolutely tasty.',
  rating: 5,
  recipe_id: 19,
  user_id: 6
})

Review.create!({
  body: 'Could not stop making these for weeks.',
  rating: 5,
  recipe_id: 20,
  user_id: 7
})

Review.create!({
  body: 'Was delicious in my homemade broth!',
  rating: 5,
  recipe_id: 20,
  user_id: 8
})

Review.create!({
  body: 'Tasty, springy, and cooks well even after freezing!',
  rating: 5,
  recipe_id: 20,
  user_id: 9
})
