require 'rails_helper'

RSpec.describe 'Admins', type: :system, js: true do
  let!(:admin) { FactoryBot.create(:admin) }

  describe 'sign in' do
    context 'valid' do
      it 'should login' do
        visit new_admin_session_path
        fill_in 'admin[email]', with: admin.email
        fill_in 'admin[password]', with: admin.password
        find('form#new_admin input[name=commit][type=submit]').click
        expect(page).to have_content('Signed in successfully.')
        page.save_screenshot
      end
    end
  end
end
