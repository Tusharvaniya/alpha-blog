Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=begin
  get 'page/home', to: 'page#home'
  get 'page/about', to: 'page#about'
=end

  root 'page#home'
  get 'about', to: 'page#about'

  resources :articles
end
