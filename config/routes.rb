Rails.application.routes.draw do

  resources :rule_assignments
  resources :aakashes

  #get 'aakashes/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

  # authors

  resource :authors

  post 'create_author', to: 'authors#create_author'
  get 'get_authors', to: 'authors#get_authors'
  post 'update_author/:id', to: 'authors#update_author'
  delete 'author/:id', to: 'authors#destroy'

  resource :accounts


end
