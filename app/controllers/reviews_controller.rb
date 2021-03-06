class ReviewsController < ApplicationController
  def show
    if params[:booking_id]
      @review = current_user.bookings.find(params[:booking_id]).review
      render :show_single
    else
      @user = User.find(params[:id])
      @reviews = @user.reviews.by_recently_created
    end
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
      redirect_to review_path(@review.user)
    else
      render :show, alert: 'At least 5 letters~'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
