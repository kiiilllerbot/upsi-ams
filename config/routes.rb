Rails.application.routes.draw do
  resources :faculties
  devise_for :users
  root 'faculties#index'
end
