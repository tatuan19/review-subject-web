Rails.application.routes.draw do
  resources :subjects
  resources :subject_files
  root 'static_pages#home'
  
  get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
