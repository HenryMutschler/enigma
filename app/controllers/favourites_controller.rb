class FavouritesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @favourite = Favourite.create(event: @event, user: current_user)
    # @favourite.user = @user
    # redirect_back(fallback_location: root_path, anchor:"star-#{@event.id}")
    # if params["from"] == "index"
    #   redirect_to events_path()
    # else
    #   redirect_to favourites_path()
    # end
  end

  def index
    @favourites = Favourite.where(user_id: current_user.id).order(created_at: :desc)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @favourite = Favourite.find_by(user_id: current_user.id, event_id: @event.id)
    @favourite.destroy
    # redirect_back(fallback_location: root_path, anchor:"star-#{@event.id}")
    if params["from"] == "index"
      # redirect_to events_path(anchor:"star-#{@event.id}")
    else
        redirect_to favourites_path
    end
  end

  private

  def favourite_params
    params.require(:favourite).permit(:event_id, :user_id)
  end
end
