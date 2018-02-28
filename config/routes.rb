Rails.application.routes.draw do

  get 'static/home'

  get 'static/about'

  root 'static#home'
  get '/about', to: 'static#about'
  
  # root "projects#index" # need to set this as the root route 
  
  resources :projects

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
