Rails.application.routes.draw do
  resources :years do
    resources :notes
  end
  resources :books do
    resources :notes
  end

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup'=> 'users#new'
  post '/users' => 'users#create'

end
