class HotelSearchService
  class << self
    attr_accessor :search_criteria, :search_radius
  end

  def self.configure(&block)
    yield(self)
  end

  def self.near(location = {})
    GOOGLE_PLACES_CLIENT.spots(location[:lat], location[:lon], name: search_criteria, radius: search_radius)
  end
end