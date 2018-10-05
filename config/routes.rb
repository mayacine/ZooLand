Rails.application.routes.draw do
  
  resources :taches
  resources :type_taches
  resources :statut_taches
  resources :animals
  resources :type_animals
  #Poste.all.each do |profil|
  # get "dashboard/#{profil.code.downcase}"
  # end
  get "dashboard/admin"
  get "dashboard/index"
  get "dashboard/manager"
  get "dashboard/veterinaire"
  get "dashboard/gardien"
  
  get '/employe/new'
  get '/employe', to: "employe#index"
  get '/employe/:id', to: "employe#show"
  get '/effectuer_tache/:id', to: "taches#effectuer_tache"
  get '/employe/:id/edit', to: "employe#edit"
  post '/employe/create', to: 'employe#create'
  put '/employe/:id', to: 'employe#update'
  delete '/employe/:id', to: 'employe#destroy'
  get 'welcome/index'
  root to: "welcome#index"
  #devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :postes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
