Rails.application.routes.draw do
  
  resources :visits
  resources :exhibitions
  resources :places

  devise_for :users
  
  devise_scope :user do
  	get "/signin" => "devise/sessions#new"
  	get "/signup" => "devise/registrations#new"
  end

  resources :users

  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  
  if Rails.env.production?
    root 'pages#home'
  else
    root 'places#index'
  end

end
