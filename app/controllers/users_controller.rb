class UsersController < ApplicationController

  def dashboard
    @products = policy_scope(Product)
    @bookings = policy_scope(Booking)
  end
end
