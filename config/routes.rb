Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/profile", to: "users#profile", as: :profile

  resources :places, only: [:index, :show, :new, :create] do
    resources :missions, only: [:create]
  end

  resources :missions, only: [] do
    member do
      get 'review'
      patch 'complete'
      patch 'cancel'
    end
  end
end
