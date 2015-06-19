Rails.application.routes.draw do
  root 'homes#index'

  resources :companies do
    resources :jobs
  end

  devise_for :users
  resources :users, only: [:show, :index] do
    resources :documents, only: :show
  end

  resources :categories, only: :show
end
