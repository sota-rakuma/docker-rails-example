require 'rails_helper'

RSpec.describe 'Customers', type: :system do
  let!(:normal) { FactoryBot.create(:normal_customer) }

  describe 'sign in' do
    context 'valid' do
      it 'should login' do
        visit new_customer_session_path
        fill_in 'customer[email]', with: normal.email
        fill_in 'customer[password]', with: normal.password
        has_button?('form#new_customer input[name=commit][type=submit]')
        click_button('Sign In')
        expect(page).to have_content('Signed in successfully.')
      end
    end
  end
end
