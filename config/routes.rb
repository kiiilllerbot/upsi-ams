Rails.application.routes.draw do
  resources :meetings
  resources :bugs
  resources :students
  resources :programs
  resources :faculties
  devise_for :users
  root 'students#index'
end
