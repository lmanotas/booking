Rails.application.routes.draw do
  root to: 'pages#index'
  resources :hotels, only: [:index]
end
