Rails.application.routes.draw do
  get 'todolists/new'
  devise_for :users
  root to: 'homes#top'
  resources :todolists, only: [:new, :create, :index, :show, :destroy]
end
