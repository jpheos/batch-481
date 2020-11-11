Rails.application.routes.draw do
  get 'pets', to: 'pets#index'
  get 'pets/new', to: 'pets#new', as: :new_pet
  get 'pets/:id', to: 'pets#show', as: :pet
  patch 'pets/:id', to: 'pets#update'
  get 'pets/:id/edit', to: 'pets#edit', as: :edit_pet
  post 'pets', to: 'pets#create'
  delete 'pets/:id', to: 'pets#destroy'
end
