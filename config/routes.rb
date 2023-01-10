Rails.application.routes.draw do
  
  resources :post_images, only:[:new,:index,:show]
  #get 'post_images/new'r
  #get 'post_images/index'
  #get 'post_images/show'
  devise_for :users
  root to: "homes#top"
  get '/homes/about'=>'homes#about',as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
