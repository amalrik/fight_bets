FightBets::Application.routes.draw do
  resources :users

  resources :fights
  resources :events
  root :to => 'fights#index'

end
