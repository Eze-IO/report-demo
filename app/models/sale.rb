class Sale < ApplicationRecord
  belongs_to :sales_associate

  # Gets annual quarter number
  def quarter_number
    month = self.sale_date.strftime("%m").to_i
    if month <= 3
      1 # first quarter
    elsif month > 3 and month < 7
      2 # second quarter
    elsif month >= 7 and month <= 9
      3 # third quarter
    else
      4 # forth quarter
    end
  end
end
