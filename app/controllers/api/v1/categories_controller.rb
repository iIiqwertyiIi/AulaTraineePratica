class Api::V1::CategoriesController < ApplicationController
    def index
        categories = Category.all
        render json: categories, status: :ok
    end

    def create
        category = Category.new(category_params)
        category.save!
        render json: category, status: :created
    end

    private

    def category_params
        params.require(:category).permit(
            :name
        )
    end
end
