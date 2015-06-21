Rails.application.routes.draw do
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'

  devise_for :users
  get 'users/profile', to: 'users#show'
end
