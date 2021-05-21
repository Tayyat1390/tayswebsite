Rails.application.routes.draw do
  resources :heros
  resources :hero
  
  root 'heros#index'
end
