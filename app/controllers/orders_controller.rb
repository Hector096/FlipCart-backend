class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render json: {
      orders: @orders
    }
  end
end
