Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/concerts', to: 'concerts#index'
  get '/concerts/new', to: 'concerts#new'
  get '/concerts/:id', to: 'concerts#show'
  get '/bands', to: 'bands#index'
  get '/bands/:id', to: 'bands#show'
  get '/concerts/:concert_id/bands', to: 'concerts/bands#index'
  post 'concerts', to: 'concerts#create'

end
