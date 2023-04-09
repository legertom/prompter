Rails.application.routes.draw do
  devise_for :users
  resources :prompts
  root 'prompts#index'
  get 'about', to: 'pages#about'
end
