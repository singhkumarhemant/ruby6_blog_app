Rails.application.routes.draw do
  resources :blogs
  root "pages#home"
  get "about", to: "pages#about"
  resources :articles   #, only: [:show, :index, :new, :create, :edit, :update, :destroy]
end
