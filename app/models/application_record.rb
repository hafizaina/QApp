class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.customers(customer)
    where("customer ILIKE ?", "%#{customer}%")
  end

  def self.startDate(date)
    where("created_at >= ?", date)
  end

  def self.endDate(date)
    # We have to compare using the next day from the given date
    nextDay = Date.parse(date).next_day
    where("created_at < ?", nextDay)
  end

end
