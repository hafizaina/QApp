class CreateTagRenewals < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_renewals do |t|
      t.string :customer
      t.integer :registration
      t.integer :reg_surcharge
      t.integer :special_plates
      t.integer :mva_fee
      t.integer :temp_registration
      t.integer :admin_flag_fee
      t.integer :online_fee
      t.integer :service_fee
      t.integer :paid_total

      t.timestamps
    end
  end
end
