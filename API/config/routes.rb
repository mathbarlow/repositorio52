Rails.application.routes.draw do
  resources :agenda
  resources :calificacion
  resources :materias
  resources :universidades
  resources :localidades
  mount_devise_token_auth_for 'Usuario', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
