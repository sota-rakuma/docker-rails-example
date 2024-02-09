require 'rails_helper'

describe 'UpControllerTest' do
  describe 'up' do
    it 'should get up' do
      get up_url
      expect(response).to have_http_status(:success)
    end
  end

  describe 'up databases' do
    it 'shoould get up databases' do
      get up_databases_url
      expect(response).to have_http_status(:success)
    end
  end
end
