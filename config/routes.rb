Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Welcome
  # Mechanics
  get '/mechanics', to: 'mechanics#index'
  # Rides
  # Parks
  get '/parks/:amusement_park_id', to: 'amusement_parks#show'
end
