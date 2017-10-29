Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"

  resources :users, only: [:new, :index, :create, :show] do
    resources :requests, only: [:new, :index, :create, :show, :edit, :update, :destroy]
    resources :offers, only: [:index, :create, :show, :destroy]
  end

  resources :offers, only: [:index]
  resources :tags, only: [:index, :new, :create]

  get '/requests', to: 'requests#request_dashboard'
  get '/requests/:id', to: 'requests#view_request', as: 'view_request'
  post '/offers/:id/accept', to: 'offers#accept', as: 'accept_offer'
  post '/offers/:id/decline', to: 'offers#decline', as: 'decline_offer'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
