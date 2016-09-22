Rails.application.routes.draw do
  resources :years do
    resources :notes
  end
  resources :books do
    resources :notes
  end
end
