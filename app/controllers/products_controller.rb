class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    skip_policy_scope
    if params[:address].empty?
      @products = Product.where.not(latitude: nil, longitude: nil)
    else
      @products = Product.near(params[:address], 5)
    end
    @markers = @products.map do |product|
      {
        lng: product.longitude,
        lat: product.latitude
      }
    end
  end

  def show
    @product = Product.find(params[:id])
    authorize @product
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    authorize @product
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :category, :description, :address, :photo, :price)
  end
end
