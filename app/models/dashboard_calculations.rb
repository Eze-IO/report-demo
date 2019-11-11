class DashboardCalculations

  def self.sales_total
    Sale.select(:amount).map(&:amount).sum
  end

  def self.highest_earning_associate
   SalesAssociate.find(DashboardCalculations.associates_total_sales.last.last) 
  end

  def self.associates_total_sales
    SalesAssociate.all.map {|sa| [sa.name, sa.total_sales, sa.id] }.sort_by(&:second)
  end

  def self.sales_by_date
    Sale.find_by_sql("select sale_date, sum(amount) as total from sales group by sale_date order by sale_date")
  end

  def self.sales_by_month
    Sale.group_by_month(:sale_date,format: '%b %Y').sum(:amount)
  end
end
