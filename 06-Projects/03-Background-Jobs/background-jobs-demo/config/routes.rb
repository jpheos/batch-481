Rails.application.routes.draw do
  require "sidekiq/web"

  authenticate :user, -> (user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
