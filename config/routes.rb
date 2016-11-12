Rails.application.routes.draw do
  resources :port_hub_maps
  root 'pages#home'

  get 'pages/pldt_office'

  resources :customer_dbs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
