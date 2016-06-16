class BookingController < ApplicationController
  def create
    # TODO: Create Booking
    redirect_to action: :confirmed
  end
end