Rails.application.routes.draw do
  root 'homes#index'

  resources :profiles do
    resources :projects
  end

  devise_for :users

  resources :categories, only: :show
end
