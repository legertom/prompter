Rails.application.routes.draw do
  resources :prompts
  root 'prompts#index'
  get 'about', to: 'pages#about'
end
