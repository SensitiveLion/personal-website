Rails.application.routes.draw do
  root 'homes#index'

  resources :companies do
    resources :jobs
  end

  resources :users, only: [:show, :index] do
    resources :documents, only: :show
  end

  resources :categories, only: :show

  devise_for :users
end
