class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings.includes(:event).joins(:event)
                            .order('events.start_time': :desc)
                            .group_by do |booking|
                              booking.event.start_time > Time.current ? 'upcoming' : 'past'
                            end

    redirect_to events_path, alert: 'You do not have any bookings yet.' if @bookings.empty?
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
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def create
    @user = current_user
    @event = Event.find(params[:event_id])
    @booking = Booking.new(booking_params)
    @booking.event = @event
    @booking.user = current_user
    if @booking.save
      UserMailer.postcode(@user, @event).deliver_later
      redirect_to booking_path(@booking), alert: 'You have successfully created a booking. We will give you the exact location 24h prior to the beginning of your mystery.'
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
