Rails.application.routes.draw do
<<<<<<< HEAD
  resources :teachers
=======

  resources :discusses
>>>>>>> 475ec2369b4c21cc235b4ae781cf1e646bf93e31
  devise_for :users
  get 'users/show'
  resources :subject_reviews
  resources :subjects
  resources :subject_files
#   root 'static_pages#home'
   root 'subjects#index'
  
#   get 'static_pages/home'
  # root 'static_pages#home'
  # root 'subject_files#index'
  
   get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
