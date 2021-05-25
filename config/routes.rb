Rails.application.routes.draw do
  devise_for :admins
  resources :heros
  resources :hero
  
  root 'heros#index'
end
