class OrdersController < ApplicationController
  def index
    @orders = Order.all
    render json: {
      orders: @orders
    }
  end

  def show
    @order = Order.find_by_id(params[:id])
    render json: {
      order: @order
    }
  end

  def create
    @product = Product.find_by_id(params[:product_id])
    @order = @product.orders.new(orders_params.except(:product_id))
    @order.user_id = current_user.id
    if @order.save
      render json: {
        status: :ordered,
        order: @order
      }
    else
      render json: {
        status: 500,
        errors: @order.errors.full_messages,
      }
    end
  end

  def destroy
    @order = Order.find_by_id(params[:id])
    if @order.delete
      render json: {
        status: :deleted,
        deleted_order: @order
      }
    end
  end

  private

  def orders_params
    params.permit(:quantity, :status, :product_id)
  end
end
