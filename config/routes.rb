Rails.application.routes.draw do
  devise_for :users
  resources :imagems
  resources :departamentos

  get "produto/busca", to: "produtos#busca", as: :busca_produto
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  root to: "produtos#index"
end
