Rails.application.routes.draw do
  resources :user_stocks, only: [:create, :destroy]
  devise_for :users
  root 'welcome#index'
  get 'myportfolio', to: 'users#myportfolio'
  get 'searchstock', to: 'stocks#search'
  get 'myfriends', to: 'users#myfriends'
  get 'searchfriend', to: 'users#search'
  resources :friendships, only: [:create, :destroy]
end
