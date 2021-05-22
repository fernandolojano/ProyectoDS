Rails.application.routes.draw do
  resources :balance_divisas
  resources :balance_criptomonedas
  resources :valor_historicos
  resources :criptomonedas
  resources :divisas
  resources :usuarios
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format:'json'} do
  	namespace :v1 do
  		resources :criptomonedas
  	end
  end
end
