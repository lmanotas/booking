require 'spec_helper'

describe HotelSearchService do

  describe 'Searching Hotels' do
    let(:search_criteria){ described_class.search_criteria }
    let(:radius){ described_class.search_radius }
    let(:my_location) do
      { lat: 52.5151511, lon: 13.3427131 }
    end

    context 'Using GooglePlaces Library' do
      subject(:hotels_near_me){ described_class.near(my_location) }

      specify do
        expect_any_instance_of(GooglePlaces::Client).to receive(:spots).with(my_location[:lat], my_location[:lon], name: search_criteria, radius: radius)
        hotels_near_me
      end
    end
  end
end