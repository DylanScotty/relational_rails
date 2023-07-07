Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/shuttles', to: 'shuttles#index'
  get '/shuttles/new', to: 'shuttles#new'
  get '/shuttles/:id', to: 'shuttles#show'
  get '/astronauts', to: 'astronauts#index'
end
