class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render json: {
      orders: @orders
    }
  end

  def create
    @product = Product.find_by_id(params[:product_id])
    @order = @product.orders.new(orders_params)
    @order.user_id = current_user
    if @order.save
      render json: {
        status: :ordered,
        order: @order
      }
    else
      render json: {
        status: 500,
        errors: @order.errors.full_messages
      }
    end
  end

  private

  def orders_params
    params.permit(:quantity, :status)
  end
end
