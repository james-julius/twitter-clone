# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#landing'
  # authenticated do
  #   root 'pages#home', as: :authenticated_root
  # end

  # unauthenticated do
  #   root 'pages#landing', as: :unauthenticated_root
  # end

  resources :profiles, only: %i[index show] do
    resources :posts
  end

  resources :pages

  resources :home

  post 'follow', to: 'follow#new'
  delete 'follow/delete', to: 'follow#delete'
end
