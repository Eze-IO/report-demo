class ChartsController < ApplicationController


  def sales_by_month
    render json: DashboardCalculations.sales_by_month 
  end

  def sales_by_associate
    render json: DashboardCalculations.associates_total_sales
  end
end
