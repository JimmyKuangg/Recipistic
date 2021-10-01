Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:show, :create] 
    resources :favorites, only: [:index, :create, :destroy]
    resources :recipes, only: [:index]
    resources :recipes, only: [:index, :show]
    resource :session, only: [:create, :destroy]
  end
end
