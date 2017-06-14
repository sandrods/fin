Rails.application.routes.draw do

  resources :formas
  resources :contas
  resources :categorias

  resources :registros
  resources :transferencias, controller: 'registros/transferencias'

  get 'financeiro/diario'
  get 'financeiro/anual'

  root 'dashboard#index'

end
