require 'spec_helper'

describe PagesController do
  context 'Landing Page on index' do
    before { get :index }

    it {expect(response).to render_template(:index)}
  end
end
