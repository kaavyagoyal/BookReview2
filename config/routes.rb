Rails.application.routes.draw do
  
 root "books#index"
 resources :books do
  member do 
    get "like" => "books#upvote"
    get "dislike" => "books#downvote"
  end
 end
 devise_for :users

 devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
 end
end