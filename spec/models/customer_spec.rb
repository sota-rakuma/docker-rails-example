require 'rails_helper'

RSpec.describe Customer, type: :model do # rubocop:disable Metrics/BlockLength
  let!(:normal) { FactoryBot.create(:normal_customer) }

  describe 'should accept valid' do
    it 'customer' do
      expect(normal.valid?).to eq(true)
    end
  end

  describe 'should not accept invalid when' do
    context 'email is' do
      it 'blank' do
        user = FactoryBot.build(:normal_customer, email: '')
        expect(user.save).to eq(false)
      end

      it 'duplicated' do
        user = Customer.create(name: 'dup',
                               email: normal.email,
                               password: 'password',
                               status: 0)
        expect(user.save).to eq(false)
      end
    end

    context 'password is' do
      it 'blank' do
        user = FactoryBot.build(:normal_customer, password: '')
        expect(user.save).to eq(false)
      end
    end
  end
end
