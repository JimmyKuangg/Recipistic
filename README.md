# Recipistic 

Recipistic is a a full-stack web aplication designed to be a clone of Epicurious. Users can search for recipes that are currently up on the website and each recipe has their own show pages where users can read through them and leave a comment or favorite that recipe if they are logged in. 

![Screen Shot 2021-10-20 at 3 32 14 PM](https://user-images.githubusercontent.com/66882632/138208375-ce304196-372e-4d98-825d-3397102d7356.png)

View it here: [Recipistic](https://recipistic.herokuapp.com/#/)

# Technologies

Technologies used in this project were: 
+ React with Redux - Frontend API
+ Ruby on Rails - Backend API
+ PostgreSQL - Database
+ Amazon S3 - Image storage

# Top Features

## Recipe Show Page

Each recipe's show page has a lot of information from the backend being fetched. This data being from multiple tables comes in one gigantic payload to the frontend, so the challenge in designing the show page was ensuring that everything fetched from the backend was reduced to their own individual slices of state so that the frontend could easily grab any information that it needed from the state.  

### The payload

To effectively grab everything that was required to render on each of the show pages, a multitude of tests were ran on Postman and Jbuilder to ensure that the JSON object being sent to the front end in the actions had enough information to render onto the page. As more features were implemeneted to the show page itself, more information needed to be fetched, thus requiring more testing and requests to Postman to able to get a physical look at the JSON object being returned.

Here's what the recipe's show Jbuilder looks like currently: 

```ruby
json.extract! @recipe, :id, :title, :body, :servings, :user_id
json.photoUrl url_for(@recipe.photo);

#Average rating
if @recipe.reviews.length != 0
  sum = 0
  @recipe.reviews.each do |review|
    sum += review.rating
  end
  avg = (sum / (@recipe.reviews.length * 1.0))
  json.average avg
end

json.ingredients do 
  @recipe.ingredients.each.with_index do |ingredient, idx|
    json.set! idx+1 do
      json.extract! ingredient, :id, :description
    end
  end
end

json.steps do
  @recipe.steps.each.with_index do |step, idx|
    json.set! idx+1 do
      json.extract! step, :id, :recipe_order, :description
    end
  end
end

json.author @recipe.user.username

json.reviews do
  @recipe.reviews.each do |review|
    json.set! review.id do
      json.extract! review, :id, :body, :rating
      json.user review.user.username
      json.reviewer_id review.user.id
    end
  end
end

if current_user && !current_user.favorites.empty? 
  json.user_favorites do 
    current_user.favorites.each do |favorite|
      json.set! favorite.id do
        json.extract! favorite, :id, :recipe_id
      end
    end
  end
else 
  json.user_favorites []
end
```

With this coming in as one object, many reducers and slices of state were required to allow everything within the oncoming payload to be reduced to a flat state shape. With each feature added, reducers were created if they needed to be and each of those reducers required all had a case to listen for the exact same action. In the end, the state was flat and easy to grab info out of in the show component.

## Search

The search functionality allows users to search for recipes based on their input to the search bar or search modal. The problem that occured was thinking of algorithm that could search through all the recipes without being too high in time-complexity. In the end, the algorithm came out to be about O(n^3), which isn't the greatest, but allows users to look for recipes based on the title of the recipes.

```javascript
filterRecipes() {
    if (!this.props.location.search.includes('=') || this.props.location.search.split('=').length !== 2) {
      return this.props.recipes;
    }

    let searchKeyWords= this.props.location.search.split('=')[1].split('%20'); //Split the search query by the spaces
    let recipeTitleSplit;
    let currentRecipe;
    let currentTitleWord;
    let filteredRecipes = [];

    for(let i = 0; i < this.props.recipes.length; i++){
      recipeTitleSplit = this.props.recipes[i].title.split(' ');
      currentRecipe = this.props.recipes[i];

      for(let j = 0; j < recipeTitleSplit.length; j++){
        currentTitleWord = recipeTitleSplit[j];

        for(let l = 0; l < searchKeyWords.length; l++){

          if (currentTitleWord.toLowerCase().includes(searchKeyWords[l].toLowerCase()) && !filteredRecipes.includes(currentRecipe)) {
            filteredRecipes.push(currentRecipe);
          }
        }
      }
    }

    return filteredRecipes;
  }
  ```
