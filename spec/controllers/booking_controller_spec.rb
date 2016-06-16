require 'spec_helper'

describe BookingController do
  context 'New Booking Page' do
    before { get :new, hotel_id: 'GOOGLEPLACEID' }

    it{ expect(response).to render_template(:new) }
  end
end
