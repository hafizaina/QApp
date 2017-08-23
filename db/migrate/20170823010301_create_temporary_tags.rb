class CreateTemporaryTags < ActiveRecord::Migration[5.1]
  def change
    create_table :temporary_tags do |t|
      t.string :customer
      t.integer :lien_fee
      t.integer :title_fee
      t.integer :tax_fee
      t.integer :temp_tag
      t.integer :special_plates
      t.integer :online_fee
      t.integer :mva_total
      t.integer :service_fee
      t.integer :total_paid

      t.timestamps
    end
  end
end
