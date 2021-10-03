# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
  bio: "My food will always make you say bone app the teeth."
})

user_3 = User.create!({
  username: 'BeetIt',
  email: 'beetfarmer12@beets.com',
  password: 'battlestargalactica',
  bio: "Bears. Beats. Battlestar Galactica."
})

user_4 = User.create!({
  username: 'NotGusto',
  email: 'anyonecancook@gustos.io',
  password: 'linguini',
  bio: "Anyone can cook"
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
    
# Favorites
Favorite.create!({
  user_id: 1,
  recipe_id: 1
})

Favorite.create!({
  user_id: 1,
  recipe_id: 2
})

# Recipes #######################################
recipe_1 = Recipe.create!({
  title: 'Pho Dac Biet',
  body: 'A hot beef based soup with rice noodles hailing from Vietnam',
  servings: 6,
  user_id: 2,
  public: true
})  

recipe_2 = Recipe.create!({
  title: 'Spaghetti Aglio E Olio',
  body: 'Translated simply as spaghetti with garlic and oil, this simple garlic rich pasta dish will be sure to impress anyone.',
  servings: 4,
  user_id: 2,
  public: true
})  

recipe_3 = Recipe.create!({
  title: 'Malasadas',
  body: 'Portuguese fried dough found in Hawaii, this fried pastry will surely satisfy your sweet tooth.',
  servings: 4,
  user_id: 1,
  public: true
})  

recipe_4 = Recipe.create!({
  title: 'Greek Dolmades',
  body: 'Little appetizers of herby mixed rice wrapped in grape leaves that will have you picking at it for more.',
  servings: 6,
  user_id: 4,
  public: true
})  

recipe_5 = Recipe.create!({
  title: 'Simple Borscht',
  body: 'A Ukranian beet soup that will warm your body as much as it stains your hands.',
  servings: 6,
  user_id: 3,
  public: true
})  

recipe_6 = Recipe.create!({
  title: 'Caprese Salad',
  body: 'A simple italian salad consisting of tomato, mozarella, and herbs',
  servings: 1,
  user_id: 5,
  public: true
})  

recipe_7 = Recipe.create!({
  title: 'Ratatouille',
  body: 'A stunning dish of beautifully arranged vegetables, this showstopper of a dish will melt even the coldest of hearts',
  servings: 8,
  user_id: 4,
  public: true
})  

recipe_8 = Recipe.create!({
  title: 'Bacon and Potato Breakfast Hash',
  body: 'This hearty dish of bacon and potatoes is sure to give you enough energy to start your day',
  servings: 4,
  user_id: 6,
  public: true
})  

recipe_9 = Recipe.create!({
  title: 'Pad See Ew',
  body: 'Sweet and savory stir fried flat rice noodles from Thailand',
  servings: 4,
  user_id: 2,
  public: true
})

recipe_10 = Recipe.create!({
  title: 'Apple Pie',
  body: 'Classic American apple pie that will be the perfect way to end any meal',
  servings: 8,
  user_id: 6,
  public: true
})

# Ingredients ###################################
# Recipe 1 ingredients 
Ingredient.create!({
  item: 'Beef Knuckle Bone',
  description: '6 large beef knuckle bones',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Ginger',
  description: '2 large knobs of ginger, halved length-wise',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Garlic',
  description: '1 large head of garlic, halved horizontally',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Onion',
  description: '5 yellow onions, 4 halved horizontally, 1 julienned',
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
  description: '1 lb of raw beef eye round, cut into thin slices',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Flat rice noodles',
  description: '1 lb of flat rice noodles, fresh or dried',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Bean sprouts',
  description: '1 bag of bean sprouts',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Green onions',
  description: '3 stalks of green onion, finely chopped, more to taste',
  recipe_id: 1
})

Ingredient.create!({
  item: 'Cilantro',
  description: '1 cup of chopped cilantro',
  recipe_id: 1
})

# Recipe 2 Ingredients 
Ingredient.create!({
  item: 'Spaghetti',
  description: '1 lb uncooked spaghetti',
  recipe_id: 2
})

Ingredient.create!({
  item: 'Garlic',
  description: '6 cloves of garlic, peeled and minced',
  recipe_id: 2
})

Ingredient.create!({
  item: 'Olive oil',
  description: '1/2 cup of olive oil',
  recipe_id: 2
})

Ingredient.create!({
  item: 'Red pepper flakes',
  description: '1/2 tbsp of red pepper flakes, more to taste',
  recipe_id: 2
})

Ingredient.create!({
  item: 'Salt',
  description: '1/2 tsp of salt. more to taste',
  recipe_id: 2
})

Ingredient.create!({
  item: 'Black pepper',
  description: '1/2 tsp of ground black pepper. more to taste',
  recipe_id: 2
})

Ingredient.create!({
  item: 'Parsley',
  description: '1/2 cup of finely chopped italian parsley',
  recipe_id: 2
})

Ingredient.create!({
  item: 'Parmigiano-Reggiano',
  description: '1 cup of grated Parmigiano-Regianno cheese',
  recipe_id: 2
})

# Recipe 3 ingredients 
Ingredient.create!({
  item: 'Active dry yeast',
  description: '1 pack of active dry yeast',
  recipe_id: 3
})

Ingredient.create!({
  item: 'Vanilla extract',
  description: '1 tbsp of vanilla extract',
  recipe_id: 3
})

Ingredient.create!({
  item: 'Water',
  description: '1/3 cup of water',
  recipe_id: 3
})

Ingredient.create!({
  item: 'All-purpose flour',
  description: '8 cups of all-purpose flour',
  recipe_id: 3
})

Ingredient.create!({
  item: 'Eggs',
  description: '6 large eggs, beaten',
  recipe_id: 3
})

Ingredient.create!({
  item: 'Butter',
  description: '1/2 cup of butter, melted',
  recipe_id: 3
})

Ingredient.create!({
  item: 'Milk',
  description: '3 cups of milk',
  recipe_id: 3
})

Ingredient.create!({
  item: 'Sugar',
  description: '1/2 cup for dough, more for coating',
  recipe_id: 3
})

Ingredient.create!({
  item: 'Oil',
  description: 'Enough to deep fry',
  recipe_id: 3
})

Ingredient.create!({
  item: 'Salt',
  description: 'Pinch of salt',
  recipe_id: 3
})

# Recipe 4 Ingredient
Ingredient.create!({
  item: 'Grape leaves',
  description: '30 grape leaves',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Onion',
  description: '2 large onions, minced',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Rice',
  description: '3 cups of uncooked rice',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Garlic',
  description: '2 cloves of garlic, minced',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Lemons',
  description: '2 whole lemons, juiced',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Olive oil',
  description: '1 cup of olive oil',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Cilantro',
  description: '1 1/2 tbsp of cilantro, minced',
  recipe_id: 4
})

Ingredient.create!({
  item: 'mint',
  description: '1 1/2 tbsp of mint, minced',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Green onion',
  description: '5 stalks of green onion. chopped fine',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Black pepper',
  description: '1 tsp of ground black pepper',
  recipe_id: 4
})

Ingredient.create!({
  item: 'Salt',
  description: 'Salt to taste',
  recipe_id: 4
})

# Recipe 5 ingredients
Ingredient.create!({
  item: 'Beet',
  description: '6 small beets, peeled and grated',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Olive oil',
  description: '4 tbsp of olive oil',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Chicken broth',
  description: '6 cups of chicken broth',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Water',
  description: '1 cup of water',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Potato',
  description: '2 medium potatoes, peeled and diced',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Carrot',
  description: '2 small carrots, peeled and diced',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Leek',
  description: '1 medium leek, chopped fine',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Celery',
  description: '1 rib of celery, diced',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Onion',
  description: '1 medium onion, diced',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Tomato',
  description: 'One can of stewed tomatoes',
  recipe_id: 5
})

Ingredient.create!({
  item: 'Dill',
  description: '3 tbsp of chopped dill',
  recipe_id: 5
})

# Recipe 6 ingredients
Ingredient.create!({
  item: 'Tomato',
  description: '3 large tomatoes, sliced thickly',
  recipe_id: 6
})

Ingredient.create!({
  item: 'Mozzarella',
  description: '1 lb of mozzarella, sliced thickly',
  recipe_id: 6
})

Ingredient.create!({
  item: 'Basil',
  description: '1 bunch of basil',
  recipe_id: 6
})

Ingredient.create!({
  item: 'Olive oil',
  description: '1/2 cup for drizzling',
  recipe_id: 6
})

Ingredient.create!({
  item: 'Salt',
  description: 'Coarse salt, add to taste',
  recipe_id: 6
})

Ingredient.create!({
  item: 'Black pepper',
  description: 'Coarsely ground black pepper, add to taste',
  recipe_id: 6
})

# Recipe 7 ingredients
Ingredient.create!({
  item: 'Eggplant',
  description: '2 large eggplants, sliced into thin rounds',
  recipe_id: 7
})

Ingredient.create!({
  item: 'Tomato',
  description: '5 large tomatoes. sliced into thin rounds, 2 small tomatoes kept whole',
  recipe_id: 7
})

Ingredient.create!({
  item: 'Squash',
  description: '2 yellow squashes, sliced into thin rounds',
  recipe_id: 7
})

Ingredient.create!({
  item: 'Zucchini',
  description: '2 large zucchinis, sliced into thin rounds',
  recipe_id: 7
})

Ingredient.create!({
  item: 'Bell Pepper',
  description: '3 red bell peppers' ,
  recipe_id: 7
})

Ingredient.create!({
  item: 'Parsley',
  description: '1/2 tsp of dried parsley',
  recipe_id: 7
})

Ingredient.create!({
  item: 'Thyme',
  description: '1/2 tsp of dried thyme',
  recipe_id: 7
})

Ingredient.create!({
  item: 'Onion',
  description: '1 small onion, diced',
  recipe_id: 7
})

Ingredient.create!({
  item: 'Vegetable stock',
  description: '1 cup of veggie stock',
  recipe_id: 7
})

Ingredient.create!({
  item: 'Olive oil',
  description: '1/2 cup of olive oil, more for drizzling',
  recipe_id: 7
})

# Recipe 8 ingredients 
Ingredient.create!({
  item: 'Potato',
  description: '4 large potatoes, peeled and diced into large chunks',
  recipe_id: 8
})

Ingredient.create!({
  item: 'Bacon',
  description: '8 strips of bacon',
  recipe_id: 8
})

Ingredient.create!({
  item: 'Onion',
  description: '1 large white onion, diced',
  recipe_id: 8
})

Ingredient.create!({
  item: 'Egg',
  description: '4 large eggs',
  recipe_id: 8
})

# Recipe 9 ingredients
Ingredient.create!({
  item: 'Rice noodle',
  description: '1 lb of fresh flat rice noodles',
  recipe_id: 9
})

Ingredient.create!({
  item: 'Garlic',
  description: '2 cloves of garlic, finely diced',
  recipe_id: 9
})

Ingredient.create!({
  item: 'Egg',
  description: '2 eggs, scrambled',
  recipe_id: 9
})

Ingredient.create!({
  item: 'Soy sauce',
  description: '1/3 cup of dark soy sauce',
  recipe_id: 9
})

Ingredient.create!({
  item: 'Oyster sauce',
  description: '1/4 cup of oyster sauce',
  recipe_id: 9
})

Ingredient.create!({
  item: 'Sugar',
  description: 'A pinch of sugar',
  recipe_id: 9
})

Ingredient.create!({
  item: 'Black pepper',
  description: 'Pinch of black pepper',
  recipe_id: 9
})

# Recipe 10 ingredients
Ingredient.create!({
  item: 'All-purpose flour',
  description: '12 oz of all-purpose flour',
  recipe_id: 10
})

Ingredient.create!({
  item: 'Butter',
  description: '2 sticks of cold butter, cubed',
  recipe_id: 10
})

Ingredient.create!({
  item: 'Sugar',
  description: '2 tbsp of sugar for the dough, 3/4 cup for the filling',
  recipe_id: 10
})

Ingredient.create!({
  item: 'Salt',
  description: '1 tbsp of salt',
  recipe_id: 10
})

Ingredient.create!({
  item: 'Water',
  description: '6 oz of ice cold water',
  recipe_id: 10
})

Ingredient.create!({
  item: 'Apple',
  description: '2 lb of baking apples',
  recipe_id: 10
})

Ingredient.create!({
  item: 'Cinnamon',
  description: '1/4 tsp of ground cinnamon',
  recipe_id: 10
})

Ingredient.create!({
  item: 'Allspice',
  description: '1/4 tsp of allspice',
  recipe_id: 10
})

Ingredient.create!({
  item: 'Nutmeg',
  description: '1/4 tsp of nutmeg',
  recipe_id: 10
})

# Steps #########################################
# Recipe 1 steps
Step.create!({
  description: 'Add the bones into a pot of water and cover the pot with enough water to cover all the bones. Bring pot to a boil and let boil for 30 minutes.',
  recipe_order: 1,
  recipe_id: 1
})

Step.create!({
  description: 'While the bones are blanching, toast the garlic, ginger, and halved onions in the oven. Lightly toast the cinnamon sticks, star anise, and peppercorns in a pan on low heat until fragrant.',
  recipe_order: 2,
  recipe_id: 1
})

Step.create!({
  description: 'After the bones have been boiled for 30 minutes, drain the water and clean the bones with water.',
  recipe_order: 3,
  recipe_id: 1
})

Step.create!({
  description: 'Add the cleaned bones, brisket, ginger, garlic, onions, and spices into a pot and add enough water to cover everything. Bring the pot to a boil.',
  recipe_order: 4,
  recipe_id: 1
})

Step.create!({
  description: 'Once boiling, set the heat to low and let the pot simmer for the next 3 - 4 hours. Occasionally, skim the scum off the top of the broth and check the brisket. If the brisket is fork tender, remove it and set it aside to chill.',
  recipe_order: 5,
  recipe_id: 1
})

Step.create!({
  description: 'After 3-4 hours, strain all the soup into another pot and bring back to a boil. Season the broth with fish sauce and salt.',
  recipe_order: 6,
  recipe_id: 1
})

Step.create!({
  description: 'Cook the noodles in accordance to the packaging instructions. When cooked, add to a bowl. Add your raw sliced beef on top along with the bean sprouts, green onions, cilantro, and julienned onions.',
  recipe_order: 7,
  recipe_id: 1
})

Step.create!({
  description: 'Pour the boiling hot broth on top and watch the raw beef get cooked as the water hits it. Enjoy!',
  recipe_order: 8,
  recipe_id: 1
})

# Recipe 2 steps
Step.create!({
  description: 'Boil the spaghetti noodles in salted water slightly before fully cooked, as they will finish in the pan. Save about 1/4 cup of the pasta water.',
  recipe_order: 1,
  recipe_id: 2
})

Step.create!({
  description: 'Add olive oil to a pan and put the pan on medium heat. Add your garlic to the pan and allow them to brown slgihtly.',
  recipe_order: 2,
  recipe_id: 2
})

Step.create!({
  description: 'Once the garlic is golden brown, add your red pepper flakes and mix the garlic oil mixture well. Stir until slightly fragrant.',
  recipe_order: 3,
  recipe_id: 2
})

Step.create!({
  description: 'When fragrant, add your boiled pasta to the pan along with your saved pasta water. Mix everything together well and let cook for a minute or two, depending on the texture of spaghetti you enjoy.',
  recipe_order: 4,
  recipe_id: 2
})

Step.create!({
  description: 'When finished cooking, turn off the heat. Add your parsley to the pan and mix everything well. Transfer it all to a plate.',
  recipe_order: 5,
  recipe_id: 2
})

Step.create!({
  description: 'Top your pasta with your cheese. Mix well and serve.',
  recipe_order: 6,
  recipe_id: 2
})

# Recipe 3 steps
Step.create!({
  description: 'Use about 1 tbsp of sugar and mix your yeast in your water with the sugar.',
  recipe_order: 1,
  recipe_id: 3
})

Step.create!({
  description: 'Using a stand mixer, add all your dry ingredients into the bowl. This would be your flour, remaining amount of sugar, and salt. Mix everything together for about 30 seconds.',
  recipe_order: 2,
  recipe_id: 3
})

Step.create!({
  description: 'Add your butter, milk, eggs, vanilla extract, and yeast mixture into the bowl and mix until it forms a smooth dough.',
  recipe_order: 3,
  recipe_id: 3
})

Step.create!({
  description: 'Cover and leave in a slightly warm place until the dough has doubled in size. This will take about an hour, but depends on your location.',
  recipe_order: 4,
  recipe_id: 3
})

Step.create!({
  description: 'Once doubled, bring a pot of oil to 350°F. Portion out your dough until each are about 12 oz"s each. Flatten the dough portions.',
  recipe_order: 5,
  recipe_id: 3
})

Step.create!({
  description: 'Once your oil is up to temp, carefully add your dough discs in and fry until brown.'
  recipe_order: 6,
  recipe_id: 3
})

Step.create!({
  description: 'When the desired color is reached, remove the malasadas from the oil and drain on paper towel. Sprinkle with sugar while they are hot. Let cool and enjoy.'
  recipe_order: 7,
  recipe_id: 3
})

