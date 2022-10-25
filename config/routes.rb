Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "about", to: "pages#about"

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments
  end

  get 'history', to: 'comments#history'
end
