Rails.application.routes.draw do
  
  resources :places
  resources :expos

  devise_for :users

  devise_scope :user do
  	get "/signin" => "devise/sessions#new"
  	get "/signup" => "devise/registrations#new"
  end

  resources :users

  get 'page/home'
  get '/about', to: 'page#about'
  get '/contact', to: 'page#contact'

  root 'places#index'

end
