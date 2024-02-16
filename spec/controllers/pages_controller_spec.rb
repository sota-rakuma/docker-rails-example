require 'rails_helper'

describe PagesController do
  describe 'home' do
    it 'should get home' do
      get :home
      expect(response).to have_http_status(:success)
    end
  end
end
