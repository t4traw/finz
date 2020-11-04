Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  root "pages#home"
  get "pages/about", as: :about
  get "pages/privacy_policy", as: :privacy_policy
  get "pages/terms_of_service", as: :terms_of_service
  get "pages/thanks", as: :thanks

  resources :users, except: [:index] do
    member do
      get :activate
      get :change_password
      get :delete
    end
  end
  post "oauth/callback", to: "oauths#callback"
  get "oauth/callback", to: "oauths#callback"
  get "oauth/callback/:provider", to: "oauths#callback"
  get "oauth/login_from/:provider", to: "oauths#oauth", as: :auth_at_provider
  get "login", to: "user_sessions#new", as: :login
  get "logout", to: "user_sessions#destroy", as: :logout
  resources :user_sessions, only: [:create]
  resources :password_resets, only: [:new, :create, :edit, :update]

  resources :tackles do
    resources :comments, only: %w[create]
  end
end
