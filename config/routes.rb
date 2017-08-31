Rails.application.routes.draw do
  resources :users, only: [:index, :create, :destroy, :update, :show]

  namespace :api, defaults: {format: 'json'} do
    resources :users
  end
  resources :users  
  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
