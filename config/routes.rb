Rails.application.routes.draw do
  #EXHIBITIONS
  resources :exhibitions do
    resources :visits
  end
  get 'exhibitions/:id/manage' => 'exhibitions#manage', :as => :manage_exhibition

  #PLACES
  resources :places

  # USERS
  devise_for :users

  devise_scope :user do
  	get "/signin" => "devise/sessions#new"
  	get "/signup" => "devise/registrations#new"
  end
  resources :users

  get '/demands', to: 'users#demands'

  # PAGE
  get '/dev', to: 'pages#index'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  #ROOT PAGE
  if Rails.env.production?
    root 'pages#home'
  else
    root 'pages#index'
  end

end
