Spree::Admin::ReportsController.class_eval do
  before_action :add_stock_requests, only: [:index]
  
  def add_stock_requests
    Spree::Admin::ReportsController.add_available_report! :stock_requests
  end  

  def stock_requests
    @search = Spree::StockRequest.ransack(params[:q])
    @stock_requests = @search.result
  end
end
