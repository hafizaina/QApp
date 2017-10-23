class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :registrations, :paid_total, :total_paid
  end
end
