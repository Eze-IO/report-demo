class DashboardController < ApplicationController
  def index
    @sales_total = DashboardCalculations.sales_total
    @highest_earner = DashboardCalculations.highest_earning_associate
  end

end
