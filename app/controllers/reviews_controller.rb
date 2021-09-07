class ReviewsController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = current_user.bookings
  end

  def new
    @booking = current_user.bookings.find(params[:booking_id])
    @review = @booking.build_review
  end

  def create
    @booking = current_user.bookings.find(params[:booking_id])
    @review = @booking.build_review(review_params)
    @review.user = @booking.event.user

    if @review.save
      redirect_to bookings_path
    else
      render :show
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
