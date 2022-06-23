Rails.application.routes.draw do
  devise_for :users
  root "articles#index"
  #root "dashboards#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # 
  resources :articles
  resources :posts
end
