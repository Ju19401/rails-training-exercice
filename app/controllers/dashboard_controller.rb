class DashboardController < ApplicationController

  def method_name
    @rents = Rent.where(user: current_user)
    @bookings = Booking.where(user: current_user)
  end
end
