Rails.application.routes.draw do
  resources :owners, :dogs
  resources :users, only: [:new, :create]
  get 'welcome', to: 'sessions#welcome'
  root  "sessions#welcome"
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'authorized', to: 'sessions#page_requires_login'
  delete 'owners/:id/delete' => 'owners#destroy', as: 'owners_delete'
  get '/owners/:id/delete' => 'owners#destroy'
  get '/search/:input' => 'dogs#search'
end
  