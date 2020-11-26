Rails.application.routes.draw do
  authenticate :user, -> (user) { user.admin? } do
    mount Blazer::Engine, at: "blazer"
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root to: 'pages#home'
end
