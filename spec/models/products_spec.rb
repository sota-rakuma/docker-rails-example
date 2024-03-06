require 'rails_helper'

RSpec.describe Product, type: :model do # rubocop:disable Metrics/BlockLength
  let(:product) { FactoryBot.create(:product) }

  describe 'valid' do
    it 'product' do
      expect(product.valid?).to eq(true)
    end
  end

  describe 'invalid' do
    context 'blank' do
      it 'name' do
        invalid = FactoryBot.build(:product, name: nil)
        expect(invalid.save).to eq(false)
      end

      it 'description' do
        invalid = FactoryBot.build(:product, description: nil)
        expect(invalid.save).to eq(false)
      end

      it 'price' do
        invalid = FactoryBot.build(:product, price: nil)
        expect(invalid.save).to eq(false)
      end

      it 'stock' do
        invalid = FactoryBot.build(:product, stock: nil)
        expect(invalid.save).to eq(false)
      end
    end
  end
end
