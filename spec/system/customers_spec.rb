require 'rails_helper'

RSpec.describe 'Customers', type: :system do
  let!(:normal) { FactoryBot.create(:normal_customer) }
end
