Rails.application.routes.draw do
  resources :departments
  resources :types
  resources :schedules
  resources :employees
  resources :events
  root 'visitors#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
