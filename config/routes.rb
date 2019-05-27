Rails.application.routes.draw do
  resources :programs
  resources :faculties
  devise_for :users
  root 'faculties#index'
end
