Rails.application.routes.draw do
  resources :survey, only: :index
  resources :scripts

  namespace :api, defaults: { format: 'json' } do
    resources :scripts, only: :index
  end

  root 'survey#index'
end
