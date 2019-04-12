Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/new'
  get 'users_controller/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=begin
  get 'page/home', to: 'page#home'
  get 'page/about', to: 'page#about'
=end

  root 'page#home'
  get 'about', to: 'page#about'


  resources :articles
  get 'signup',to: 'users#new'
  post 'users',to: 'users#create'

  resources :users
  post 'edit',to: 'users#edit'
  get 'update',to: 'users#update'

  get 'login',to: 'sessions#new'
  post 'login',to: 'sessions#create'
  delete 'logout',to: 'sessions#destroy'

end
