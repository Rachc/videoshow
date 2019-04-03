Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  resources :videos
  resources :users, only: [:show]

  post 'add_view', to: 'videos#add_view'

  root to: 'welcome#home'
end
