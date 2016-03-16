Rails.application.routes.draw do
  
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

  root 'pages#home'

end
