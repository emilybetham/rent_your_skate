class UsersController < ApplicationController
  def dashboard
    skip_authorization
    @products = current_user.products
    @bookings = current_user.bookings
    @my_bookings = current_user.bookings_as_owner
  end
end
