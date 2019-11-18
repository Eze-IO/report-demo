class SalesAssociate < ApplicationRecord

  has_many :sales

  def total_sales
    sales.map(&:amount).sum
  end

  # Gets avarage sales
  def average_sales
    begin
      # Get total sales & divide by number of sales
      (self.total_sales/sales.count).to_i # Convert to integer
      # if 'ZeroDivisionError' exception occurs return total sales
    rescue ZeroDivisionError => e
      self.total_sales
    end
  end

  # Gets minimum sale
  def minimum_sale
    sales.collect(&:amount).min
  end

  # Gets maximum sale
  def maximum_sale
    sales.collect(&:amount).max
  end
end
