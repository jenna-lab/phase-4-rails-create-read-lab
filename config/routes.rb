Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#index route of plants
get '/plants', to: 'plants#index'
#show route of id of plants
  get '/plants/:id', to: 'plants#show'
#create route of plants
  post '/plants', to: 'plants#create'
end