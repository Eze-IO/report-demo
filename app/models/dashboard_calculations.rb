class DashboardCalculations

  def self.sales_total
    Sale.select(:amount).map(&:amount).sum
  end

  def self.highest_earning_associate
   DashboardCalculations.associates_total_sales.last.first 
  end

  def self.associates_total_sales
    SalesAssociate.all.map {|sa| [sa.name, sa.total_sales] }.sort_by(&:last)
  end

  def self.sales_by_date
    Sale.find_by_sql("select sale_date, sum(amount) as total from sales group by sale_date order by sale_date")
  end

  def self.sales_by_month
    Sale.group_by_month(:sale_date,format: '%b %Y').sum(:amount)
  end
end
