Rails.application.routes.draw do
  resources :contacts
  resources :news
  root 'inicios#index'
  resources :contacts
  resources :inicios
end
