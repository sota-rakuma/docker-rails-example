require 'rails_helper'

describe 'PagesControllerTets' do
  describe 'home' do
    it 'should get home' do
      get root_url
      expect(response).to have_http_status(:success)
    end
  end

  describe 'up' do
    it 'should get up' do
      get up_url
      expect(response).to have_http_status(:success)
    end
  end
end
