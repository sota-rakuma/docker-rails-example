require 'rails_helper'

describe UpController do
  describe 'up' do
    it 'should get up' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'up databases' do
    it 'shoould get up databases' do
      get :databases
      expect(response).to have_http_status(:success)
    end
  end
end
