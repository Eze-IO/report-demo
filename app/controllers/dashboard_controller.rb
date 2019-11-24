class DashboardController < ApplicationController
  def index
    @sales_total = DashboardCalculations.sales_total
    @highest_earner = DashboardCalculations.highest_earning_associate

    #*********************************************#
    @avarage_sales = DashboardCalculations.avarage_sales
    @minimum_sale = DashboardCalculations.minimum_sale
    @maximum_sale = DashboardCalculations.maximum_sale
    #*********************************************#
  end

end
