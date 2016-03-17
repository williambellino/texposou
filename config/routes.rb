Rails.application.routes.draw do
<<<<<<< HEAD


  resources :exhibitions do
    resources :visits
  end
=======
  
  resources :visits

  # EXHIBITIONS
  resources :exhibitions
  get '/exhibitions/:id/manage' => 'exhibitions#manage'
>>>>>>> 38492a06f466eaee17d1c8350896f64660ba1d2e

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
