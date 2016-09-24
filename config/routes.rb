Rails.application.routes.draw do
  root :to => 'years#index'

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
