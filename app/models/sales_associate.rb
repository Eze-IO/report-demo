class SalesAssociate < ApplicationRecord

  has_many :sales

  def total_sales
    sales.map(&:amount).sum
  end

end
