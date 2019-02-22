class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    skip_policy_scope
    if params[:address].present? && params[:category].present?
      products = Product.near(params[:address], 5)
      @products = []
      products.each do |product|
        if product.category == params[:category]
          @products << product
        end
      end
    elsif params[:address].present?
      @products = Product.near(params[:address], 5)
    elsif params[:category].present?
      @products = Product.where(category: params[:category])
    else
      @products = Product.where.not(latitude: nil, longitude: nil)
    end
    @markers = @products.map do |product|
      {
        lng: product.longitude,
        lat: product.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { product: product }),
        image_url: helpers.asset_url('pin-map.png')
      }
    end
  end

  def show
    @products = policy_scope(Product).order(created_at: :desc)
    @product = Product.find(params[:id])
    authorize @product
    @booking = Booking.new
    # authorize @booking
    @booking.product = @product
    @products_category = Product.where(category: @product.category)
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
