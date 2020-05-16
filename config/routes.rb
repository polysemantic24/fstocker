Rails.application.routes.draw do
  resources :user_stocks
  devise_for :users
  root 'welcome#index'
  get 'myportfolio', to: 'users#myportfolio'
  get 'searchstock', to: 'stocks#search'
end
