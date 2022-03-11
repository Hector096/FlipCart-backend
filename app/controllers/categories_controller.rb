class CategoriesController < ApplicationController
    def index
        @categories = Category.all
        render json: {
            categories: @categories
        }
    end

    def create
        @category = Category.new(categories_params)
        if @category.save
            render json: {
                status: :created,
                category: @category
            }
        else
            render json: {
                status: 500,
                errors: @category.errors.full_messages
            }
        end
    end

    private

    def categories_params
        params.permit(:name)
    end
end
