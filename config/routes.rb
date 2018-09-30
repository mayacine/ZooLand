Rails.application.routes.draw do
  resources :taches
  resources :type_taches
  resources :statut_taches
  resources :animals
  resources :type_animals
  get 'dashboard/admin'

  get 'welcome/index'
  root to: "welcome#index"
  #devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :postes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
