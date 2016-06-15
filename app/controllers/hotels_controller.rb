class HotelsController < ApplicationController
  def index
    @hotels = HotelSearchService.near(search_hotels_params)
  end

private
  
  def search_hotels_params
    params.permit(:lat, :lon)
  end
end