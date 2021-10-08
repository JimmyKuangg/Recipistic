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