class CreateTitles < ActiveRecord::Migration[5.1]
  def change
    create_table :titles do |t|
      t.string :customer
      t.string :title_number
      t.integer :lien_fees
      t.integer :title_fee
      t.integer :tax_fee
      t.integer :online_fee
      t.integer :mva_total
      t.integer :service_fee
      t.integer :total_paid

      t.timestamps
    end
  end
end
