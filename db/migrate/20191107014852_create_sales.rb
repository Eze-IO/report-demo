class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.decimal :amount
      t.datetime :sale_date
      t.references :sales_associate, null: false, foreign_key: true

      t.timestamps
    end
  end
end
