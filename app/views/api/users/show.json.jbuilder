json.extract! @user, :id, :username, :bio

json.recipes do 
  @user.recipes.each.with_index do |recipe, idx|
    json.set! idx+1 do 
      json.extract! recipe, :id, :title, :body, :servings, :public
    end
  end
end
