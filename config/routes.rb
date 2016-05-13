Rails.application.routes.draw do

  resources :people
  root :to => "people#index"
  mount Resque::Server, :at => "/resque"  
end
