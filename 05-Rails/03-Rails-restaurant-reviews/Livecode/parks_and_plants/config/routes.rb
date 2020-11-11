Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: :create
  end

  resources :plants, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# Before

  # config wagon
  # scaffold sur garden

# User Stories

  # I can see a garden
  # I can see all plants of a garden
  # I can add one plant to a garden
  # I can remove a plant from a garden

## Codage en silo
# Route -> Action -> View -> Front
