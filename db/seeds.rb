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
  description: '6 large beef knuckle bones',
  recipe_id: 1
})

Ingredient.create!({
  description: '2 large knobs of ginger, halved length-wise',
  recipe_id: 1
})

Ingredient.create!({
  description: '1 large head of garlic, halved horizontally',
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
  description: '3 stalks of green onion, finely chopped, more to taste',
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
  description: '1/2 tbsp of red pepper flakes, more to taste',
  recipe_id: 2
})

Ingredient.create!({
  description: '1/2 tsp of salt. more to taste',
  recipe_id: 2
})

Ingredient.create!({
  description: '1/2 tsp of ground black pepper. more to taste',
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
  description: '1/2 cup for dough, more for coating',
  recipe_id: 3
})

Ingredient.create!({
  description: 'Enough to deep fry',
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
  description: 'One can of stewed tomatoes',
  recipe_id: 5
})

Ingredient.create!({
  description: '3 tbsp of chopped dill',
  recipe_id: 5
})

# Recipe 6 ingredients
Ingredient.create!({
  description: '3 large tomatoes, sliced thickly',
  recipe_id: 6
})

Ingredient.create!({
  description: '1 lb of mozzarella, sliced thickly',
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
  description: '8 strips of bacon',
  recipe_id: 8
})

Ingredient.create!({
  description: '1 large white onion, diced',
  recipe_id: 8
})

Ingredient.create!({
  description: '4 large eggs',
  recipe_id: 8
})

Ingredient.create!({
  description: '2 stalks of green onion. chopped finely',
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
  description: 'Take your chilled brisket and slice it into 1/2 inch slices. Add them to your bowl.',
  recipe_order: 8,
  recipe_id: 1
})

Step.create!({
  description: 'Pour the boiling hot broth on top and watch the raw beef get cooked as the broth hits it. Enjoy!',
  recipe_order: 9,
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
  description: 'Once your oil is up to temp, carefully add your dough discs in and fry until brown.',
  recipe_order: 6,
  recipe_id: 3
})

Step.create!({
  description: 'When the desired color is reached, remove the malasadas from the oil and drain on paper towel. Sprinkle with sugar while they are hot. Let cool and enjoy.',
  recipe_order: 7,
  recipe_id: 3
})

# Recipe 4 steps
Step.create!({
  description: 'Prepare the leaves by draining the liquid from the can and removing the stems.',
  recipe_order: 1,
  recipe_id: 4
})

Step.create!({
  description: 'Take your rice and wash it thoroughly. In a skillet, add some olive oil and your chopped onions. Cook the onions until they become slightly translucent.',
  recipe_order: 2,
  recipe_id: 4
})

Step.create!({
  description: 'Add your rice to the skillet and cook the rice slightly for about a minute. Once done, remove all of the contents and transfer to a bowl',
  recipe_order: 3,
  recipe_id: 4
})

Step.create!({
  description: 'To the bowl of rice and onions, add your mint, cilantro, and green onions. Mix this well and prepare to use this to stuff your grape leaves.',
  recipe_order: 4,
  recipe_id: 4
})

Step.create!({
  description: 'With your filling ready, take a grape leaf and place it on a flat surface. Add about a tbsp of your filling to the stem part of the leaf. Roll the leaf and filling, tuck in the sides, and roll it all the way.',
  recipe_order: 5,
  recipe_id: 4
})

Step.create!({
  description: 'Take your stuffed grape leaves and begin to layer them in a pot. Put the dolmades fold side down to prevent them from unfolding while cooking. Make sure they are packed tight next to one another, and layered on top of one another.',
  recipe_order: 6,
  recipe_id: 4
})

Step.create!({
  description: 'Add the lemon juice, salt, pepper, and the rest of your olive oil to the pot. Add enough water to barely cover the dolmades and bring the pot to a boil. Once boiling, simmer for 30 minutes.',
  recipe_order: 7,
  recipe_id: 4
})

Step.create!({
  description: 'After 30 minutes, turn the heat off and let cool slightly. Once cooled, remove from the pot and serve cold or hot.',
  recipe_order: 8,
  recipe_id: 4
})

# Recipe 5 steps
Step.create!({
  description: 'In a pan, heat your olive oil over medium heat. Add your leeks, celery, and onion. Add some salt and slowly cook these vegetables down for 6 minutes.',
  recipe_order: 1,
  recipe_id: 5
})

Step.create!({
  description: 'Add your water, chicken broth, and beets after the vegetables have cooked. Bring to a boil and let simmer for 30 minutes, or until the beets are fork tender.',
  recipe_order: 2,
  recipe_id: 5
})

Step.create!({
  description: 'Once the beets are tender, add your potatoes and carrots. Cook until both are tender as well.',
  recipe_order: 3,
  recipe_id: 5
})

Step.create!({
  description: 'Add your tomatoes and cook for another 10 minutes. Once 10 minutes have passed, turn the heat off, add some of your dill and mix it in well. When serving, add more dill on top.',
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
  description: 'Layer your tomatoes, mozzarella, and basil on top of one another in that order. Layer them in a way where you can begin a new layer on top of the last.',
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
  description: 'In a blender, add your whole tomatoes and diced bell peppers. Also add your parsley, thyme, onion, garlic, olive oil, and vegetable stock. Blend on high power until smooth.',
  recipe_order: 2,
  recipe_id: 7
})

Step.create!({
  description: 'In a large baking dish, add the sauce you just made as a thin layer on the bottom. In an alternating pattern, layer your vegetables closely, one on top of the other and across the entire baking dish',
  recipe_order: 3,
  recipe_id: 7
})

Step.create!({
  description: 'Drizzle some olive oil over the arranged vegetables. Cut a piece of parchment paper to cover the vegetables and place it into the preheated oven for 1 hour.',
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
  description: 'After the potatoes are tender and golden brown, remove them from the skillet. Clean the skillet and put it back on the stove on medium high heat. Add your bacon to the skillet and cook it until it becomes crispy.',
  recipe_order: 2,
  recipe_id: 8
})

Step.create!({
  description: 'When crispy, remove the bacon and keep the bacon fat. Set the bacon aside on a paper towel. When cooled, chop the bacon into tiny pieces.',
  recipe_order: 3,
  recipe_id: 8
})

Step.create!({
  description: 'With the bacon removed, add your cooked potatoes back into the same skillet and set the heat to low. Add your bacon bits and mix well.',
  recipe_order: 4,
  recipe_id: 8
})

Step.create!({
  description: 'Create 4 small pockets in your potato bacon mixture. In those pockets, crack your eggs into those pockets and cover with a lid for about 5 minutes.',
  recipe_order: 5,
  recipe_id: 8
})

Step.create!({
  description: 'Add your green onions and serve the dish in the skillet itself.',
  recipe_order: 6,
  recipe_id: 8
})

# Recipe 9 steps
Step.create!({
  description: 'In a bowl, mix the oyster sauce, soy sauce, sugar, and black pepper. Set aside for later',
  recipe_order: 1,
  recipe_id: 9
})

Step.create!({
  description: 'In a pan or wok, heat up some oil, but don"t allow it to begin smoking. If it does, take the pan off the heat and start over. Add your garlic and cook them slightly.',
  recipe_order: 2,
  recipe_id: 9
})

Step.create!({
  description: 'Add your eggs and allow it to cook. Do not mix it too much. Once the edge of eggs have set and the middle is still runny, add your rice noodles.',
  recipe_order: 3,
  recipe_id: 9
})

Step.create!({
  description: 'Toss everything together, making sure that everything is evenly spread out. Once ready, add your sauce and mix well.',
  recipe_order: 4,
  recipe_id: 9
})

Step.create!({
  description: 'Plate the noodles on a dish and serve.',
  recipe_order: 5,
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
  description: 'Add your ice water and mix well, until a dough forms.',
  recipe_order: 3,
  recipe_id: 10
})

Step.create!({
  description: 'Take your dough out of the food processor and shape it into a flat disc. Wrap the dough in plastic wrap and put it in a fridge to cool for 2 hours.',
  recipe_order: 4,
  recipe_id: 10
})

Step.create!({
  description: 'While the dough is chilling, prepare the filling by mixing your chopped apples, nutmeg, allspice, and cinnamon.',
  recipe_order: 5,
  recipe_id: 10
})

Step.create!({
  description: 'After 2 hours, preheat your oven to 475°F',
  recipe_order: 6,
  recipe_id: 10
})

Step.create!({
  description: 'Take your dough and dust it with flour. Seperate the dough into two equal pieces.',
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
  
})