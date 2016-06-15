require 'spec_helper'

describe HotelsController do
  context 'index list' do
    before { get :index }

    it {expect(response).to render_template(:index)}
  end
end
