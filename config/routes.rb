Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get '/home/about', to: 'home#about', as: "about"
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:index, :show, :edit, :update]

end