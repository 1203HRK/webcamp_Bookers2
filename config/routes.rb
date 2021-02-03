Rails.application.routes.draw do
  post "favorites/:book_id/create" => "favorites#create"
  post "favorites/:book_id/destroy" => "favorites#destroy"

  devise_for :users
  root to: 'homes#top'
  get 'home/about' => "homes#index"
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :users, only: [:new, :create, :index, :show, :edit, :update, :destroy]

end
