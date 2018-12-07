Rails.application.routes.draw do


 get '/login', to: 'admin/sessions#new'
 get '/logout', to: 'admin/sessions#destroy'

  #adminroutes
  namespace :admin do
    resources :traivans, only: [:index, :edit, :update]
    resources :sessions, only: [:new, :create, :destroy]
    resources :posts
    resources :tags, except: [:index]
    resources :settings, only: [:new , :create, :edit ,:update]
  end

end
