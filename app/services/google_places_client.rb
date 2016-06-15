class GooglePlacesClient
  include Singleton

  attr_reader :connection

  def initialize
    @connection = GooglePlaces::Client.new(Rails.application.secrets.google_api_key)
  end
end