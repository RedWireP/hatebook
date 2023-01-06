Rails.application.routes.draw do
  resources :friends, :new
  #get 'home/index'
  get 'friends/new'
  get 'home/about'
  root 'home#index'
end
