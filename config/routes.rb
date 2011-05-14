MrFoxServer::Application.routes.draw do
  resources :records

  root :to => 'home#welcome'
end
