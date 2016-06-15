class HotelSearchService
  def self.near(location = {})
    GOOGLE_PLACES_CLIENT.spots(location[:lat], location[:lon], name: 'hotels')
  end
end