Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :videos
  resources :users, only: [:show]

  root to: 'welcome#home'
end
