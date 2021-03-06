Rails.application.routes.draw do
  devise_for :users
  #resources :users, only: :show
  resources :users, param: :email, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "grams#index"
  resources :grams do
    resources :comments, only: :create
  end
end
