Rails.application.routes.draw do

  resources :formas
  resources :contas
  resources :categorias

  resources :registros do
    post :duplicate, on: :member
  end
  resources :transferencias, controller: 'registros/transferencias'

  get 'financeiro/diario'
  get 'financeiro/anual'

  root 'financeiro#diario'

end
