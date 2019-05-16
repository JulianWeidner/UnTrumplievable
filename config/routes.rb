Rails.application.routes.draw do

  root :to => 'fakers#index'
  resources :faker_sessions
  resources :fakers
  
  get 'login' => 'faker_sessions#new', :as => :login
  post 'logout' => 'faker_sessions#destroy', :as => :logout


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
