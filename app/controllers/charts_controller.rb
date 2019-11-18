class ChartsController < ApplicationController
  def sales_by_month
    render json: DashboardCalculations.sales_by_month 
  end

  def sales_by_associate
    render json: DashboardCalculations.associates_total_sales
  end

  # function for average sales per associate
  def avg_sales_by_associate
    render json: DashboardCalculations.associates_average_sales
  end

  # function for minimum sale per associate
  def min_sale_by_associate
    render json: DashboardCalculations.associates_minimum_sale
  end

  # function for maximum sale per associate
  def max_sale_by_associate
    render json: DashboardCalculations.associates_maximum_sale
  end

  # function for revenue per quarter
  def revenue_by_quarter
    render json: DashboardCalculations.quarters_revenues
  end
end
