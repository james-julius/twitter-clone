Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"

get 'profiles/:id' => 'profiles#show'
# or
resources :profiles, only: %i[index show]

end
