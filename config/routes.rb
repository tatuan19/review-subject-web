Rails.application.routes.draw do
  resources :discusses
  devise_for :users
  get 'users/show'
  resources :subject_reviews
  resources :subjects
  resources :subject_files
#   root 'static_pages#home'
   root 'subjects#index'
  
#   get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
