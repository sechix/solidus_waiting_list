module Spree
  class StockRequestsController < StoreController

    def new
      @stock_request = StockRequest.new(stock_request_params)
    end

    def create
      @stock_request = StockRequest.new(stock_request_params)
      @stock_request.email = try_spree_current_user.email if try_spree_current_user
      @stock_request.variant_id = params[:variant_id]
      respond_to do |format|
        if @stock_request.save
          format.html { redirect_to :back,  notice: Spree.t(:successful_stock_request) }
          format.js
          format.json { render json: { status: 201, message: Spree.t(:successful_stock_request) } }
        else
          format.html { render action: 'new'}
          format.json { render json: @stock_request.errors, status: :unprocessable_entity }
        end
      end
    end

    private

    def stock_request_params
      params.permit(:stock_request)
    end
  end
end
