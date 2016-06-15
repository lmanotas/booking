require 'spec_helper'

describe HotelsController do
  context 'index list' do
    use_vcr_cassette "hotels_list"
    
    before { get :index, {lat: 52.51515110, lon: 13.34271310} }

    it {expect(response).to render_template(:index)}
  end
end
