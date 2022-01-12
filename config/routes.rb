  Rails.application.routes.draw do
    devise_for :users   #devise_forの前には何も記述しない。記述するとエラーが発生する。
    root to: 'homes#top'
    get "/homes/about" => "homes#about", as: "about"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    resources :post_images, only: [:new, :create, :index, :show, :destroy]do
    resources :post_comments, only: [:create, :destroy]
  end
    resources :users, only: [:show, :edit, :update]
  end