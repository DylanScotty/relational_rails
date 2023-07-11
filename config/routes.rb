Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/shuttles', to: 'shuttles#index'
  get '/shuttles/new', to: 'shuttles#new'
  get '/shuttles/:id', to: 'shuttles#show'
  get '/astronauts', to: 'astronauts#index'
  get '/astronauts/:id', to: 'astronauts#show'
  get '/shuttles/:shuttle_id/astronauts', to: 'shuttle_astronauts#index'
  post '/shuttles', to: 'shuttles#create'
  post '/shuttles/:shuttle_id/astronauts', to: 'shuttle_astronauts#create'
  get '/shuttles/:id/edit', to: 'shuttles#edit'
  patch '/shuttles/:id', to: 'shuttles#update'
  get '/shuttles/:shuttle_id/astronauts/new', to: 'shuttle_astronauts#new'
  get '/astronauts/:id/edit', to: 'astronauts#edit'
  patch '/astronauts/:id', to: 'astronauts#update'
  get '/shuttles/:shuttle_id/astronauts', to: 'astronauts#index', as: 'sort_astronauts'
  get '/shuttles/:shuttle_id/astronauts/sort', to: 'astronauts#sort'
  
end
