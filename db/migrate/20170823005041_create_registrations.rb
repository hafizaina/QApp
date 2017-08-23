class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.string :customer
      t.integer :lien_fees
      t.integer :title_fee
      t.integer :sale_tax
      t.integer :registration
      t.integer :reg_surcharge
      t.integer :tag_transfer
      t.integer :special_plates
      t.integer :online_fee
      t.integer :mva_total
      t.integer :service_fee
      t.integer :paid_total

      t.timestamps
    end
  end
end
