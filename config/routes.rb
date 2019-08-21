Rails.application.routes.draw do
 
  resources :appoints
  resources :clients
  resources :barbers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/login', to: 'login#new'
  post '/login', to: 'login#create'
end
