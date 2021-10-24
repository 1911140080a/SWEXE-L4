Rails.application.routes.draw do
 
 resources :users
 root 'users#index'
 
 get 'top/main'
 post 'top/login'
 get 'top/logout'
 
end
