FightBets::Application.routes.draw do
  resources :fights
  resources :events
  root :to => 'fights#index'

end
