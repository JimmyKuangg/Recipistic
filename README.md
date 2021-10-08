# Recipistic 

Recipistic is a a full-stack web aplication designed to be a clone of Epicurious. Users can search for recipes that are currently up on the website and each recipe has their own show pages where users can read through them and leave a comment or favorite that recipe if they are logged in. 

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

`
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
`
