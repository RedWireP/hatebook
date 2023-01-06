Rails.application.routes.draw do
  resources :tests
  resources :friends
  #get 'home/index'
  get 'home/about'
  root 'home#index'
 
end
