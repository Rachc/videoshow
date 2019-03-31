Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }

  resources :videos

  root to: 'welcome#home'
end
