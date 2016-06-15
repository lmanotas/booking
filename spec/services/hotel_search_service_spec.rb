require 'spec_helper'

describe HotelSearchService do
  let(:my_location) do
    { lat: 52.5151511, lon: 13.3427131 }
  end

  context 'Using GooglePlaces Library' do
    it do
      VCR.use_cassette("hotels_list") do
        # expect_any_instance_of(GooglePlaces).to receive(:spots).with(my_location[:lat], my_location[:lon], name: 'hotels')
        described_class.near(my_location)
      end
    end
  end

  context 'Using location to bring list of hotels' do
    subject { described_class.near() }

    it 'list of hotels'
  end
end