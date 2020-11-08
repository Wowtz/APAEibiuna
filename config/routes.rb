Rails.application.routes.draw do
  resources :news
  root 'news#index'
  resources :contatos
  resources :inicios
end
