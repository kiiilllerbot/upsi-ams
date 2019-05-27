Rails.application.routes.draw do
  resources :students
  resources :programs
  resources :faculties
  devise_for :users
  root 'students#index'
end
