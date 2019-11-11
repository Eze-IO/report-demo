Rails.application.routes.draw do
  
  get 'sales_report/index'
  get 'dashboard/index'
  resources :sales
  resources :sales_associates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :charts do
    get 'sales_by_month'
    get 'sales_by_associate'
  end

  root to: 'dashboard#index'
end
