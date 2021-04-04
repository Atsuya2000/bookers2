Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get '/home/about', to: 'home#about', as: "about"
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:create, :index, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]

    resources :book_comments, only: [:create, :destroy]
  end

end