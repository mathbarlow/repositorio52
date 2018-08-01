Rails.application.routes.draw do
  resources :calificacion
  resources :agenda
  resources :administradores
  resources :estudiantes
  resources :tutores
  resources :materias
  resources :universidades
  resources :localidades
  devise_for :usuarios
  root "index#index"
end
