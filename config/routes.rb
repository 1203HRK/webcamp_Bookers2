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

  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  get 'follows/:user_id' => 'relationships#index'
  get 'followers/:user_id' => 'relationships#show'

end
