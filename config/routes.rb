Rails.application.routes.draw do
  resources :hero
  
root 'hero#index'
end
