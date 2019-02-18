class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.product = Product.find(params[:product_id])
    if @booking.save
      redirect_to users_dashboard_path
    else
      render :new
    end

  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :product_id)
  end
end
