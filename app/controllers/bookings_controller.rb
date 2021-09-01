class BookingsController < ApplicationController
  def show
    @bookings = Booking.find(params[:id])
  end
end
