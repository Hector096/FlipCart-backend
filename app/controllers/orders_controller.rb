class OrdersController < ApplicationController


    def index
        @orders = Order.find_by_id(current_user.id)
        render json: {
          length: @orders.size,
          orders: @orders
        }
      end

    def show 
    end


    private

    def getparams
    end

    
end
