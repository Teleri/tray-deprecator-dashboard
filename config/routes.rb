Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :api_statuses
  require "sidekiq/web"
  # authenticate :user, ->(user) { user.admin? } do
  #   mount Sidekiq::Web => '/sidekiq'
  # end
end
