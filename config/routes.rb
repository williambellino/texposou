Rails.application.routes.draw do
  
  resources :visits
  resources :exhibitions

  #PLACES
  resources :places

  # USERS 
  devise_for :users
  
  devise_scope :user do
  	get "/signin" => "devise/sessions#new"
  	get "/signup" => "devise/registrations#new"
  end
  resources :users

  get 'users/:id/demands', to: 'users#demands'

  # PAGE
  get '/index', to: 'pages#index'
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
