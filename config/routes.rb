FightBets::Application.routes.draw do
  resources :fights
  root :to => 'fights#index'

end
