require 'spec_helper'

describe BookingService do
  use_vcr_cassette 'hotels_list'

  context 'Register Booking on Database' do
    subject(:create_booking){ described_class.create('ChIJF6VjuqxRqEcRfShAqTgDfkU', { name: 'Jose Martinez', from: '25.8.2016', to: '26.8.2016' }) }

    it { expect{ create_booking }.to change(User, :count) }
    it { expect{ create_booking }.to change(Booking, :count) }
  end
end