class BookingController < ApplicationController
  def index
    @bookings = current_user.bookings
    if @bookings.empty?
      redirect_to events_path, alert: 'You do not have any bookings yet.'
    else
      @bookings
    end
  end

  def show
    @booking = current_user.bookings.find(params[:id])
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to booking_path(current_user)
  end

  def new
    @event = Event.find(params[:event_id])
    @booking = @event.bookings.new
  end

  def create
    @event = Event.find(params[:event_id])
    @booking = current_user.bookings.new(booking_params)
    @booking.event = @event
    if @booking.save
      redirect_to booking_path(current_user), alert: 'You created a new Booking! We will send you an Email 24 hours before the event starts, with the postcode. We look forward to surprising you!'
    else
      render :new
    end
  end

  def edit
    @booking = current_user.bookings.find(params[:id])
  end

  def update
    @booking = current_user.bookings.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to booking_path(current_user), alert: 'The booking is updated.'
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:ticket_amount)
  end
end
