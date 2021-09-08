class EventsController < ApplicationController
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @favourite = Favourite.new

    # if params[:query_geo] =~ /\A[A-Z]{1,2}\d[A-Z\d]? ?\d[A-Z]{2}\Z/i
    geocoder = if params[:query_geo].present?
                 Geocoder.search(params[:query_geo], params: { city: 'london', countrycodes: 'gb' })
                         .first
               end

    @events = geocoder ? Event.near(geocoder.coordinates, 2) : Event.all

    return unless params[:query_event].present?

    query = "%#{params[:query_event]}%"
    categories = Event.categories.keys.select { |key| key.downcase.include?(params[:query_event].downcase) }

    @events = @events.where(category: categories)
                     .or(@events.where(Event.arel_table[:event_name].matches(query)))
  end

  def show
    @event = Event.find(params[:id])
    # @reviews = @event.user.reviews
    @favourite = Favourite.new
    @markers = [{
      lat: @event.latitude,
      lng: @event.longitude,
      info_window: render_to_string(partial: "info_window", local: { event: @event })
      }]
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event), alert: 'You have created a new event!'
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    if @event.update(event_params)
      redirect_to event_path(@event), alert: 'You have updated the event.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to root_path, alert: 'You have successfully deleted this event!'
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:postcode, :restaurant_name, :start_time, :end_time, :category, :event_name, :event_descritpion, :price)
  end
end
