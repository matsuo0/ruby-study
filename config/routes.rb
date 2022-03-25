Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destory'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root 'boards#index'
  # get 'boards', to: 'boards#index'
  # get 'boards/new', to: 'boards#new'
  # post 'boards', to: 'boards#create'
  # get 'boards/:id', to: 'boards#show'
  #resources :boards, only: [:index, :new, :create, :show, :edit, :update]
  resources :boards
  resources :comments, only: %i[create destroy]
end
