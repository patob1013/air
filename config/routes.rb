Air::Application.routes.draw do
  
  root :to => 'flights#index'
  
  get '/sessions/new' => 'sessions#new', :as => :signin
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy', :as => :signout
  
  get "/flights" => 'flights#index'
  get "/flights/:id" => 'flights#show', :as => :flight
  
  resources :users
  
end
