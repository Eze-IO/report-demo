class CreateSalesAssociates < ActiveRecord::Migration[6.0]
  def change
    create_table :sales_associates do |t|
      t.string :name
      t.string :department

      t.timestamps
    end
  end
end
