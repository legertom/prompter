Rails.application.routes.draw do
  resources :prompts
  root 'prompts#index'
end
