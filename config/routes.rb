Rails.application.routes.draw do
  resources :job_orders
  resources :accounts
  get 'subscriptions/my_subscrition'

  get 'payments/payment_page'

  get 'supports/faq'

  get 'supports/troubleshooting'

  get 'supports/chat'

  get 'supports/sms'

  get 'supports/calls'

  get 'supports/tickets'

  resources :port_hub_maps
  root 'pages#home'

  get 'pages/pldt_office'
  get 'pages/customer'
  get 'pages/installer'

  resources :customer_dbs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
