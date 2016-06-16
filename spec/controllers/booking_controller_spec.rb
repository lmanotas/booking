require 'spec_helper'

describe BookingController do

  let(:params_collection) do
    {
      hotel_id: 'ChIJF6VjuqxRqEcRfShAqTgDfkU',
      booking: {
        name: 'Pedro Perez',
        from: '25.8.2016',
        to: '28.8.2016'
      }
    }
  end

  describe 'New Booking Page' do
    context do
      before { get :new, hotel_id: params_collection[:hotel_id] }

      it{ expect(response).to render_template(:new) }
    end
  end

  describe 'Create Booking' do
    use_vcr_cassette 'google_places'

    context 'Show successfull Booking page when booking is created' do
      before { post :create, params_collection }

      it{ expect(response).to redirect_to(action: :confirmed) }
    end

    context 'Render No Available booking for date' do
      it 'Expected to render a different page as confirmed'
    end

    context 'Use BookingService on Create' do
      specify do
        expect(BookingService).to receive(:create)
        post :create, params_collection
      end
    end
  end
end