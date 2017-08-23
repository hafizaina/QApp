json.extract! receipt, :id, :customer, :title_number, :lien_fees, :title_fee, :tax_fee, :online_fee, :mva_total, :service_fee, :total_paid, :created_at, :updated_at
json.url title_url(receipt, format: :json)
