Rails.application.routes.draw do

  resources :people
  root :to => "people#index"
# get 'persons/create'

# get 'persons/new'

# get 'persons/edit'

# get 'persons/show'

end
