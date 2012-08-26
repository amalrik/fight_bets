FightBets::Application.routes.draw do
  resources :users

  resources :user_sessions
  match 'login'  => 'user_sessions#new',     :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout

  resources :fights
  resources :events
  resources :bets
  root :to => 'fights#index'

end
