Rails.application.routes.draw do
  
devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' } 

resources :movies do
    collection do
        get 'search'
    end
    resources :reviews, except: [:index]

end

# resources :reviews
# dont use just a reviews route

root 'movies#index'
# get 'users/:id/movies' => 'users#moviews', :as => :user_movies


resources :users, only: [:show]

# resource :users, only: [:show] do
#     resources :movies
#   end

default_url_options :host => "example.com"
#this is for when a user forgets password

end

