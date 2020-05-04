class ProductsController < ApplicationController
  def index
    puts(permitted_params)
    @products = FindProducts.new(Product.all).call(permitted_params)
  end

  private

  def permitted_params
    params.permit(:from_price, :to_price)
  end
end
