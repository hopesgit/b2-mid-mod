Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Welcome
  # Mechanics
  get '/mechanics', to: 'mechanics#index'
  get '/mechanics/:mechanic_id', to: 'mechanics#show'
  post '/mechanics/:mechanic_id', to: 'ride_mechanics#create'
  # Rides
  # Parks
  get '/parks/:amusement_park_id', to: 'amusement_parks#show'
end
