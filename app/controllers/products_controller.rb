class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: {
      length: @products.size,
      products: @products
    }
  end

  def create
    @category = Category.find_by_id(product_params[:category_id])
    @product = @category.products.new(product_params.except(:category_id))
    if @product.save
      render json: {
        status: :created,
        product: @product
      }
    else
      render json: {
        status: 500,
        errors: @product.errors.full_messages
      }
    end
  end

  def destroy
    @product = Product.find_by_id(params[:id])
    if @product.delete
      render json: {
        status: :destroyed
      }
    else
      render json: {
        status: 500,
        errors: @product.errors.full_messages
      }
    end
  end

  private

  def product_params
    params.permit(:name, :description, :img, :price,
                  :quantity, :category_id)
  end
end
