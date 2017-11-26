class ApplicationController < ActionController::Base

  before_action :require_login
  protect_from_forgery with: :exception
  include SessionsHelper

  def home

  end

  def filterItems(items)
    items = items.customers(params[:customer]) if params[:customer].present?
    items = items.startDate(params[:start_date]) if params[:start_date].present?
    items = items.endDate(params[:end_date]) if params[:end_date].present?
    return items
  end

  private

    def require_login
      unless logged_in?
        redirect_to login_url
      end
    end

end
