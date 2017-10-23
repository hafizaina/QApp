class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home

  end

  def filterItems(items)
    items = items.customers(params[:customer]) if params[:customer].present?
    items = items.startDate(params[:start_date]) if params[:start_date].present?
    items = items.endDate(params[:end_date]) if params[:end_date].present?
    return items
  end

end
