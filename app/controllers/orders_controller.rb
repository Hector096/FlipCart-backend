class OrdersController < ApplicationController
  before_action :authenticate_user!
  
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
    @order = current_user.orders.create(
      product_id: params[:product_id],
      quantity: params[:quantity]
  )
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

  def destroy
    @order = Order.find_by_id(params[:id])
    if @order.delete
      render json: {
        status: :deleted,
        deleted_order: @order
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
    params.require(:quantity, :product_id).permit(self.class::PERMITTED_PARAMS)
  end
end
