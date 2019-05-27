Rails.application.routes.draw do
  resources :registers
  resources :payments
  resources :meetings
  resources :bugs
  resources :students
  resources :programs
  resources :faculties
  devise_for :users
  root 'students#index'
end
