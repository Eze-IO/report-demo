class DashboardCalculations

  def self.sales_total
    Sale.sum(:amount)
  end

  def self.highest_earning_associate
   SalesAssociate.find_by_name(self.associates_total_sales.last.first) 
  end

  def self.associates_total_sales
    SalesAssociate.all.map{|sa| [sa.name, sa.total_sales] }.sort_by(&:second)
  end

  #*********************************************#
  #    Average, Minimum, & Maximum functions    #
  #*********************************************#

  def self.associates_average_sales
    SalesAssociate.all.map{|sa| [sa.name, sa.average_sales] }.sort_by(&:second)
  end

  def self.associates_minimum_sale
    SalesAssociate.all.map{|sa| [sa.name, sa.minimum_sale] }.sort_by(&:second)
  end

  def self.associates_maximum_sale
    SalesAssociate.all.map{|sa| [sa.name, sa.maximum_sale] }.sort_by(&:second)
  end

  #*********************************************#

  #*********************************************#
  #             Dashboard functions             #
  #*********************************************#

  def self.avarage_sales
    (self.sales_total/Sale.all.count).to_i
  end

  def self.minimum_sale
    Sale.all.map(&:amount).min
  end

  def self.maximum_sale
    Sale.all.map(&:amount).max
  end

  #*********************************************#


  #*********************************************#
  #            EC: Revenue function             #
  #*********************************************#

  def self.quarters_revenues
    a = Array.new
    a.push(["Quarter 1", Sale.all.select{|s| s.quarter_number == 1 }.map{|q| q.amount.to_i }.sum])
    a.push(["Quarter 2", Sale.all.select{|s| s.quarter_number == 2 }.map{|q| q.amount.to_i }.sum])
    a.push(["Quarter 3", Sale.all.select{|s| s.quarter_number == 3 }.map{|q| q.amount.to_i }.sum])
    a.push(["Quarter 4", Sale.all.select{|s| s.quarter_number == 4 }.map{|q| q.amount.to_i }.sum])
    a.group_by(&:first).sort_by(&:first)
    a
  end

  #*********************************************#

  def self.sales_by_date
    Sale.find_by_sql("select sale_date, sum(amount) as total from sales group by sale_date order by sale_date")
  end

  def self.sales_by_month
    Sale.group_by_month(:sale_date,format: '%b %Y').sum(:amount)
  end
end
