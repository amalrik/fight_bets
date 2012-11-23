FightBets::Application.routes.draw do
  get "password_resets/create"

  get "password_resets/edit"

  get "password_resets/update"

  resources :users

  resources :user_sessions
  match 'login'  => 'user_sessions#new',     :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

  resources :fights
  resources :events
  resources :bets
  resources :password_resets
  root :to => 'fights#index'

end
