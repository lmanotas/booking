class HotelSearchService
  SEARCH_CRITERIA = 'hotels'

  def self.near(location = {})
    GOOGLE_PLACES_CLIENT.spots(location[:lat], location[:lon], name: SEARCH_CRITERIA)
  end
end