Rails.application.routes.draw do
  
  get 'sales_report/index'
  get 'dashboard/index'
  resources :sales
  resources :sales_associates
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :charts do
    get 'sales_by_month'
    get 'sales_by_associate'
    # Add chart paths for average, minimum, & maximum charts
    get 'avg_sales_by_associate'
    get 'min_sale_by_associate'
    get 'max_sale_by_associate'
    # EC: Add chart path for revenue each quarter chart
    get 'revenue_by_quarter'
  end

  root to: 'dashboard#index'
end
