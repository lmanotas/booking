class BookingController < ApplicationController
  def create
    BookingService.create(params[:hotel_id], booking_params)
    # TODO: Create Booking
    redirect_to action: :confirmed
  end

private
  def booking_params
    params.require(:booking).permit(:name, :from, :to)
  end
end