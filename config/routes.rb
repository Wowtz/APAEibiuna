Rails.application.routes.draw do
  resources :news
  root 'inicios#index'
  resources :contatos
  resources :inicios
end
