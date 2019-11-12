Rails.application.routes.draw do
  resources :usecases
  resources :rests
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/health', to: 'health#health'

  post '/rest/useraccess', to: 'rest#useraccess'
  post '/rest/usecases', to: 'rest#usecases'
  post '/rests/useraccess', to: 'rests#useraccess'
  post '/rests/usecases', to: 'rests#usecases'

  resources :posts, only: [:index, :show, :create, :update]

end
