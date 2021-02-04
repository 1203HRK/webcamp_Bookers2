Rails.application.routes.draw do

  get 'book_comments/create'
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => "homes#index"
  resources :users, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end


end
