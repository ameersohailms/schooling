Rails.application.routes.draw do
  get 'users/index'
  namespace :sp_schhools do
    resources :ratings
  end
  match '/users',   to: 'users#index',   via: 'get'
  get '/user', to: redirect('/'), constraints: lambda { |req|
    req.path.exclude? 'rails/active_storage'
  }
  # resources :schools
  # resources :posts
  devise_for :users

  root to: "school_parties#index"
  resources :users
  resources :profiles

  #  devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }


  # devise_for :users

  resources :school_parties
  resources :profiles
  # resources :profiles

  # mount SpAdmission::Engine, :at => "/admission"
  # mount SpSchools::Engine, :at => "/sp_schools"


  # Defines the root path route ("/")

end
