class BookingService
  attr_reader :hotel, :user, :booking, :from, :to, :name

  def self.create(place_id, params)
    self.new(place_id, params).create!
  end

  def initialize(place_id, params)
    @hotel  = hotel_from(place_id)
    @from = params[:from]
    @name = params[:name]
    @to = params[:to]
  end

  def create!
    create_user
    create_booking
  end

private
  def booking_params
    { from: from, to: to, place_id: hotel.place_id, hotel_name: hotel.name }
  end

  def create_booking
    Booking.create(booking_params)
  end

  def create_user
    User.create(user_params)
  end

  def hotel_from(place_id)
    GOOGLE_PLACES_CLIENT.spot(place_id)
  end

  def user_params
    { name: name }
  end
end