require 'rails_helper'

describe 'Admin::ProductsController' do # rubocop:disable Metrics/BlockLength
  before do
    create_products
  end

  describe 'index' do
    context 'login as admin' do
      let(:admin) { FactoryBot.create(:admin) }
      before do
        sign_in admin, scope: :admin
      end
      it 'ok' do
        get admin_products_url
        expect(response).to have_http_status(:ok)
        # expect(response).to include(:hoge)
      end
    end
  end
end
