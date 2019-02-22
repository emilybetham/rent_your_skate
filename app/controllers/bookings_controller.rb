class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @product = Product.find(params[:product_id])
    authorize @product
    @booking.product = @product
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    @booking.product = Product.find(params[:product_id])
    if @booking.save
      redirect_to dashboard_path
    else
      @product = @booking.product
      @products = Product.all
      render 'products/show'
    end
  end

  def accepted
    skip_authorization
    @booking = Booking.find(params[:booking_id])
    @booking.status = 'accepted'
    @booking.save
    redirect_to dashboard_path
  end

   def rejected
    skip_authorization
    @booking = Booking.find(params[:booking_id])
    @booking.status = 'rejected'
    @booking.save
    redirect_to dashboard_path
  end


  private

  def booking_params
    params.require(:booking).permit(:start_day, :end_day, :message, :user_id, :product_id)
  end
end
