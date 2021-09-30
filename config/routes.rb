Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resources :users, only: [:show, :create] do
      resources :favorites, only: [:index, :create, :destroy]
      resources :recipes, only: [:index]
    end
    resources :recipes, only: [:index]
    resource :session, only: [:create, :destroy]
  end
end
