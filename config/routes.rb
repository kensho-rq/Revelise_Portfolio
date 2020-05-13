Rails.application.routes.draw do
  get 'signup' =>'users#new'
  get 'login' => 'users#login_form'
  get 'users/:id' => 'users#show'
  get 'users/:id/edit' => 'users#edit'
  get 'users/:id/likes' => 'users#likes'
  get 'users/:id/follows' => 'users#follows'
  get 'logout' => 'users#logout'
  get "simple_login" => 'users#simple_login'
  post 'login' => 'users#login'
  post 'users/:id/update' => 'users#update'
  post 'users/create' => 'users#create'
  post 'users/:post_id/destroy' => 'users#destroy'

  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#index'
  post 'likes/:post_id/create' => 'likes#create'
  post 'likes/:post_id/destroy' => 'likes#destroy'
  post 'follows/:post_id/create' => 'follows#create'
  post 'follows/:post_id/destroy' => 'follows#destroy'
  post 'posts/:id/comment' => 'posts#comment'
  post 'posts/create' => 'posts#create'
  post 'posts/:id/destroy' => 'posts#destroy'

  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
