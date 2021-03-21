Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "api_statuses#index"
  get '/api_statuses/:api_status_id/jobs', to: 'jobs#create', as: 'api_status_jobs'
  resources :api_statuses
  require "sidekiq/web"
end
