Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "api_statuses#index"
  get '/api_statuses/:api_status_id/jobs', to: 'jobs#create', as: 'api_status_jobs'
  get '/update_all_apis', to: 'jobs#update_all_apis', as: 'update_all_apis'
  resources :api_statuses
  require "sidekiq/web"
end
