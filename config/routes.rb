Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
 root "books#index"
 resources :books do
  member do 
    get "like" => "books#like"
    get "dislike" => "books#dislike"
  end
 end
 devise_for :users

 devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
 end
end