class OrdersController < ApplicationController


    def index
        @orders = current_user.orders
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
