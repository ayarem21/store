class ProductsController < ApplicationController
  def index
    @category = Category.all
    @products = FindProducts.new(Product.all).call(permitted_params)
  end

  private

  def permitted_params
    params.permit(:from_price, :to_price, :category_id)
  end
end
