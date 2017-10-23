class RenameColumnPaidTotaltoTotalPaidinRenewals < ActiveRecord::Migration[5.1]
  def change
    rename_column :tag_renewals, :paid_total, :total_paid
  end
end
