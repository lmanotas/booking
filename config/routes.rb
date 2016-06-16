Rails.application.routes.draw do
  root to: 'pages#index'
  resources :hotels, only: [:index] do
    resources :booking, only: [:new, :create] do
      collection do
        get :confirmed
      end
    end
  end
end
