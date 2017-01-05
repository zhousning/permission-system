class ServicesController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @shop = @product.shop
  end
end
