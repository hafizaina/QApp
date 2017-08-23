json.extract! registration, :id, :customer, :lien_fees, :title_fee, :sale_tax, :registration, :reg_surcharge, :tag_transfer, :special_plates, :online_fee, :mva_total, :service_fee, :paid_total, :created_at, :updated_at
json.url registration_url(registration, format: :json)
