Rails.application.routes.draw do
  resources :tests
  resources :friends, :new
  #get 'home/index'
  get 'friends/new'
  get 'home/about'
  root 'home#index'
end
