class HotelSearchService
  class << self
    attr_accessor :search_criteria, :search_radius, :default_lon, :default_lat
  end

  def self.configure(&block)
    yield(self)
  end

  def self.near(location = {})
    lat = location[:lat] || default_lat
    lon = location[:lon] || default_lon
    GOOGLE_PLACES_CLIENT.spots(lat, lon, name: search_criteria, radius: search_radius)
  end
end