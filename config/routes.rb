Rails.application.routes.draw do
<<<<<<< HEAD
=======
  resources :discusses
>>>>>>> 8e859561bdbdea7ed337f80ce44dd86a61ee8c4f
  devise_for :users
  get 'users/show'
  resources :subject_reviews
  resources :subjects
  resources :subject_files
<<<<<<< HEAD
  root 'static_pages#home'
  # root 'subject_files#index'
  
   get 'static_pages/home'
=======
#   root 'static_pages#home'
   root 'subjects#index'
  
#   get 'static_pages/home'
>>>>>>> 8e859561bdbdea7ed337f80ce44dd86a61ee8c4f
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
