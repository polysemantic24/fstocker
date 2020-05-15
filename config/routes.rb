Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'myportfolio', to: 'users#myportfolio'
  get 'searchstock', to: 'stocks#search'
end
