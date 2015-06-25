Rails.application.routes.draw do
  root 'homes#index'

  resources :profiles, except: :index do
    resources :projects, except: :index
  end

  devise_for :users

  resources :categories, only: :show
end
