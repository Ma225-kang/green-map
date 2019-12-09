Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/profile", to: "users#profile", as: :profile

  resources :places, only: [:index, :show, :new, :create] do
    resource :congratulations, only: [:show]

    collection do
      get "geolocate_user"
    end
    resources :missions, only: [:create]
  end

  resources :missions, only: [:edit, :update] do
    member do
      get 'review'
      patch 'complete'
      patch 'cancel'
    end
  end


end
