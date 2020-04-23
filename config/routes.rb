Rails.application.routes.draw do
  get 'user/new' =>'user#new'
  get 'login' => 'user#login'
  get 'post/index' => 'post#index'
  get '/' => 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
