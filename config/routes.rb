Rails.application.routes.draw do

  root :to => 'static#index'

  resources :faker_sessions
  resources :fakers
  
  get 'login' => 'faker_sessions#new', :as => :login
  post 'logout' => 'faker_sessions#destroy', :as => :logout

  resources :fakers do
    resources :faketweets
  end

  #play
  get 'play', to: 'play#play'
  post 'play', to: 'play#comparison'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
