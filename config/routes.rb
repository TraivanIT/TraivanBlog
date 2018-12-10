Rails.application.routes.draw do

  #front-end routes
  resources :posts , only: [:index ,:show]
  get 'about', to: 'posts#about'
  get 'service', to: 'posts#service'
  get 'contact', to: 'posts#contact'
  root to: 'posts#index'
  

 get '/login', to: 'admin/sessions#new'
 get '/logout', to: 'admin/sessions#destroy'

  #adminroutes
  namespace :admin do
    resources :dashboard, only: [:index]
    resources :traivans, only: [:index, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
    resources :posts
    resources :tags, except: [:index]
    resources :settings, only: [:new , :create, :edit ,:update]
  end

end
