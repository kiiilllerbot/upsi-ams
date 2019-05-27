Rails.application.routes.draw do
  get 'home/index'
  resources :registers
  resources :payments
  resources :meetings
  resources :bugs
  resources :students
  resources :programs
  resources :faculties
  devise_for :users
  root 'home#index'
end
