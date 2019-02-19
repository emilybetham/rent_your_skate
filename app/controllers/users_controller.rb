class UsersController < ApplicationController

  def dashboard
    skip_authorization
    @products = current_user.products
    @bookings = current_user.bookings
  end
end
