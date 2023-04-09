Rails.application.routes.draw do
  devise_for :users
  resources :prompts do
    resources :comments, only: [:create, :destroy]
  end
  root 'prompts#index'
  get 'about', to: 'pages#about'

  # API
  namespace :api do
    namespace :v1 do
      resources :prompts, only: [:index, :show]
    end
  end


end
