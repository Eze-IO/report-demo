Rails.application.routes.draw do
  
  get 'dashboard/index'
  resources :sales
  resources :sales_associates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'dashboard#index'
end
