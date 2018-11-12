Rails.application.routes.draw do
  resources :departments
  resources :types
  resources :schedules
  resources :employees
  resources :events
  resources :visitors
  root to: 'welcome#show'
  mount ReportsKit::Engine, at: '/'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
