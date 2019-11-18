class DashboardCalculations

  def self.sales_total
    Sale.sum(:amount)
  end

  def self.highest_earning_associate
   SalesAssociate.find_by_name(self.associates_total_sales.last.first) 
  end

  def self.associates_total_sales
    SalesAssociate.all.map {|sa| [sa.name, sa.total_sales] }.sort_by(&:second)
  end

  #*********************************************#
  #    Average, Minimum, & Maximum functions    #
  #*********************************************#

  def self.associates_average_sales
    SalesAssociate.all.map {|sa| [sa.name, sa.average_sales] }.sort_by(&:second)
  end

  def self.associates_minimum_sale
    SalesAssociate.all.map {|sa| [sa.name, sa.minimum_sale] }
  end

  def self.associates_maximum_sale
    SalesAssociate.all.map {|sa| [sa.name, sa.maximum_sale] }
  end

  #*********************************************#

  #*********************************************#
  #            EC: Revenue function             #
  #*********************************************#

  def self.quarters_revenues
    Sale.find_by_sql("select (cast(strftime('%m', sale_date) as integer) + 2) / 3 as quarter, sum(amount) as total from sales group by quarter order by quarter")
  end

  #*********************************************#

  def self.sales_by_date
    Sale.find_by_sql("select sale_date, sum(amount) as total from sales group by sale_date order by sale_date")
  end

  def self.sales_by_month
    Sale.group_by_month(:sale_date,format: '%b %Y').sum(:amount)
  end
end
